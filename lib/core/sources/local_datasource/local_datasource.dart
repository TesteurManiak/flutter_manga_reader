import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/drift_datasource.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/gen/tachiyomi.pb.dart' as pb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

abstract class LocalDatasource {
  /// Read a manga from the database.
  Future<Manga> getMangaById(int mangaId);

  /// Return a [Stream] for the [Manga] with the given [id].
  Stream<Manga> watchMangaById(int id);

  Future<Manga?> getMangaByUrlAndSourceId({
    required String url,
    required String sourceId,
  });

  /// Return a [Stream] of [Manga] in the library.
  Stream<List<Manga>> watchMangasInLibrary();

  /// Return a [Stream] of [Chapter] for a given [mangaId] and ordered by index.
  Stream<List<Chapter>> watchChaptersForManga(int mangaId);

  /// Return a [Stream] of [Chapter] with their read value at false for a given
  /// [mangaId] and ordered by index.
  Stream<List<Chapter>> watchUnreadChaptersForManga(int mangaId);

  /// Return a [Stream] for the [ReadingDirection] of the manga with the given
  /// [mangaId].
  Stream<ReadingDirection> watchReadingDirection(int mangaId);

  Stream<List<ChapterHistory>> watchHistory();

  Future<void> setReadingDirection({
    required int mangaId,
    required ReadingDirection direction,
  });

  /// Upsert a manga into the database.
  Future<void> saveManga(Manga manga);

  /// Upsert a [List] of [Manga]s into the database.
  Future<void> saveMangas(List<Manga> mangas);

  /// Insert a [SourceManga] into the database and return its id.
  Future<int> saveSourceManga(SourceManga sourceManga);

  Future<void> applyTachiyomiBackup({
    required List<pb.BackupManga> mangas,
    required bool keepPreviousData,
  });

  Future<Chapter?> getChapter(int chapterId);
  Future<void> setChaptersRead({
    required List<int> chapterIds,
    required bool read,
  });
  Future<void> setMangaFavorite({required int mangaId, required bool favorite});
  Future<void> setChapterLastPageRead({
    required int chapterId,
    required int lastPageRead,
  });
  Future<void> setChaptersDownloaded({
    required List<int> chapterIds,
    required bool downloaded,
  });

  /// Delete downloaded chapters from the filesystem and set their `downloaded`
  /// property to false in the database.
  Future<void> deleteChapters(List<int> chapterIds);

  Future<void> saveChapterHistory(ChapterHistory chapterHistory);
  Future<void> deleteChapterHistory(int mangaId);

  /// Update simultaneously the [Manga] and its [SourceChapter]s.
  Future<void> saveMangaData(MangaFetchRecord record);
  Future<void> saveMangaChapters(List<MangaFetchRecord> records);
}

final localDatasourceProvider = Provider(
  (ref) => DriftDatasource(appDatabase: ref.watch(appDatabaseProvider)),
);

final watchMangasInLibraryProvider = StreamProvider<List<Manga>>(
  (ref) => ref.watch(localDatasourceProvider).watchMangasInLibrary(),
);

final watchMangaByIdProvider = StreamProvider.autoDispose.family<Manga, int>(
  (ref, id) => ref.watch(localDatasourceProvider).watchMangaById(id),
);

typedef UrlAndSourceIdParams = ({String url, String sourceId});

final getMangaByUrlAndSourceIdProvider = FutureProvider.autoDispose
    .family<Manga?, UrlAndSourceIdParams>((ref, params) {
      return ref
          .watch(localDatasourceProvider)
          .getMangaByUrlAndSourceId(url: params.url, sourceId: params.sourceId);
    });

final getChapterProvider = FutureProvider.autoDispose.family<Chapter?, int>(
  (ref, chapterId) => ref.watch(localDatasourceProvider).getChapter(chapterId),
);

final watchChaptersForMangaProvider = StreamProvider.family<List<Chapter>, int>(
  (ref, mangaId) =>
      ref.watch(localDatasourceProvider).watchChaptersForManga(mangaId),
);

final watchUnreadChaptersCountForMangaProvider =
    StreamProvider.family<int, int>((ref, mangaId) {
      return ref
          .watch(localDatasourceProvider)
          .watchUnreadChaptersForManga(mangaId)
          .map((chapters) => chapters.length);
    });
