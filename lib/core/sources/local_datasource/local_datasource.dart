import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/drift_datasource.dart';
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

  /// Read a manga from the database.
  Future<Manga?> getManga(int mangaId);

  Future<int?> getMangaId({
    required String title,
    required String url,
    required String? lang,
    required String? source,
  });

  /// Save a [List] of [SourceChapter] into the database.
  Future<void> saveSourceChapters(
    List<SourceChapter> sourceChapters,
    int mangaId,
  );

  Future<Chapter?> getChapter(int chapterId);
  Future<void> setChapterRead({required int chapterId, required bool read});
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
}

@Riverpod(keepAlive: true, dependencies: [])
LocalDatasource localDatasource(LocalDatasourceRef ref) {
  return DriftDatasource(appDatabase: AppDatabase());
}

@Riverpod(keepAlive: true, dependencies: [localDatasource])
Stream<List<Manga>> watchMangasInLibrary(WatchMangasInLibraryRef ref) {
  return ref.watch(localDatasourceProvider).watchMangasInLibrary();
}

@Riverpod(keepAlive: true, dependencies: [localDatasource])
Stream<Manga?> watchManga(WatchMangaRef ref, int id) {
  return ref.watch(localDatasourceProvider).watchManga(id);
}

@Riverpod(dependencies: [localDatasource])
Future<int?> getMangaIdFromSource(
  GetMangaIdFromSourceRef ref,
  SourceManga sourceManga,
) async {
  return ref.watch(localDatasourceProvider).getMangaId(
        title: sourceManga.title,
        url: sourceManga.url,
        lang: sourceManga.lang,
        source: sourceManga.source,
      );
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
