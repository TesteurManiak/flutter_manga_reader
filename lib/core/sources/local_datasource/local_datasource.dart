import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/drift_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_datasource.g.dart';

abstract class LocalDatasource {
  Stream<List<Manga>> watchMangasInLibrary();

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
