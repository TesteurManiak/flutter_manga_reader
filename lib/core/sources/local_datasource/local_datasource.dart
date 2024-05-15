import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/drift_datasource.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_datasource.g.dart';

abstract class LocalDatasource {
  /// Return a [Stream] of [Manga] in the library.
  Stream<List<Manga>> watchMangasInLibrary();

  /// Return a [Stream] of [Chapter] for a given [mangaId] and ordered by index.
  Stream<List<Chapter>> watchChaptersForManga(int mangaId);

  /// Return a [Stream] of [Chapter] with their read value at false for a given
  /// [mangaId] and ordered by index.
  Stream<List<Chapter>> watchUnreadChaptersForManga(int mangaId);

  /// Return a [Stream] for the [Manga] with the given [id].
  Stream<Manga?> watchManga(int id);

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

  /// Clear the local manga and chapters and insert the given list of
  /// [SourceManga]s.
  Future<void> synchronizeLibrary(List<SourceManga> sourceMangas);

  /// Read a manga from the database.
  Future<Manga?> getManga(int mangaId);

  Future<int?> getMangaIdFromSource(SourceManga sourceManga);

  Future<Chapter?> getChapter(int chapterId);
  Future<void> setChaptersRead({
    required List<int> chapterIds,
    required bool read,
  });
  Future<void> setMangaFavorite({
    required int mangaId,
    required bool favorite,
  });
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
  Future<void> saveMangaDatas(List<MangaFetchRecord> records);
}

@Riverpod(keepAlive: true, dependencies: [])
LocalDatasource localDatasource(LocalDatasourceRef ref) {
  return DriftDatasource(appDatabase: ref.watch(appDatabaseProvider));
}

@Riverpod(keepAlive: true, dependencies: [localDatasource])
Stream<List<Manga>> watchMangasInLibrary(WatchMangasInLibraryRef ref) {
  return ref.watch(localDatasourceProvider).watchMangasInLibrary();
}

@Riverpod(dependencies: [localDatasource])
Stream<Manga?> watchManga(WatchMangaRef ref, int id) {
  return ref.watch(localDatasourceProvider).watchManga(id);
}

@Riverpod(dependencies: [localDatasource])
Future<int?> getMangaIdFromSource(
  GetMangaIdFromSourceRef ref,
  SourceManga sourceManga,
) async {
  return ref.watch(localDatasourceProvider).getMangaIdFromSource(sourceManga);
}

@Riverpod(dependencies: [localDatasource])
Future<Chapter?> getChapter(GetChapterRef ref, int chapterId) {
  return ref.watch(localDatasourceProvider).getChapter(chapterId);
}

@Riverpod(keepAlive: true, dependencies: [localDatasource])
Stream<List<Chapter>> watchChaptersForManga(
  WatchChaptersForMangaRef ref,
  int mangaId,
) {
  return ref.watch(localDatasourceProvider).watchChaptersForManga(mangaId);
}

@Riverpod(dependencies: [localDatasource])
Stream<int> watchUnreadChaptersCountForManga(
  WatchUnreadChaptersCountForMangaRef ref,
  int mangaId,
) {
  return ref
      .watch(localDatasourceProvider)
      .watchUnreadChaptersForManga(mangaId)
      .map((chapters) => chapters.length);
}
