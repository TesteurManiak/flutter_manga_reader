import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/drift_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_datasource.g.dart';

abstract class LocalDatasource {
  Stream<List<Manga>> watchMangasInLibrary();
  Stream<List<Manga>> watchAllMangas();
  Stream<List<Chapter>> watchChaptersForManga(int mangaId);

  /// Insert a manga into the database.
  Future<void> saveManga(Manga manga);

  /// Insert a [SourceManga] into the database and return its id.
  Future<int> saveSourceManga(SourceManga sourceManga);

  /// Insert a list of mangas into the database.
  Future<void> saveMangas(List<Manga> mangas);

  /// Get a manga from the database.
  Future<Manga?> getManga(int mangaId);

  Future<void> updateManga(Manga manga);

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

  Future<List<Chapter>> getChapters(int mangaId);

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
}

@Riverpod(keepAlive: true)
LocalDatasource localDatasource(LocalDatasourceRef ref) {
  return DriftDatasource(appDatabase: AppDatabase());
}

@riverpod
Stream<List<Manga>> watchMangasInLibrary(WatchMangasInLibraryRef ref) {
  return ref.watch(localDatasourceProvider).watchMangasInLibrary();
}

@riverpod
Stream<List<Manga>> watchAllMangas(WatchAllMangasRef ref) {
  return ref.watch(localDatasourceProvider).watchAllMangas();
}

@riverpod
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

@riverpod
Future<Chapter?> getChapter(GetChapterRef ref, int chapterId) {
  return ref.watch(localDatasourceProvider).getChapter(chapterId);
}

@Riverpod(keepAlive: true)
Stream<List<Chapter>> watchChaptersForManga(
  WatchChaptersForMangaRef ref,
  int mangaId,
) {
  return ref.watch(localDatasourceProvider).watchChaptersForManga(mangaId);
}
