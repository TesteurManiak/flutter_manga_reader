import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_datasource.g.dart';

abstract class LocalDatasource {
  Stream<List<Manga>> watchMangasInLibrary();
  Future<void> saveMangas(List<Manga> mangas);
}

class _DriftImpl implements LocalDatasource {
  _DriftImpl({
    required AppDatabase appDatabase,
  }) : _database = appDatabase;

  final AppDatabase _database;

  @override
  Stream<List<Manga>> watchMangasInLibrary() {
    return _database
        .select(_database.dbMangas)
        // ..where((tbl) => tbl.favorite.equals(true))

        .watch()
        .map(
      (dbMangas) {
        return dbMangas.map((e) {
          return Manga(
            id: e.id,
            favorite: e.favorite,
            url: e.url,
            source: e.source,
            title: e.title,
            artist: e.artist,
            description: e.description,
            genre: e.genre,
            status: e.status,
            updateStrategy: e.updateStrategy,
            initialized: e.initialized,
          );
        }).toList();
      },
    );
  }

  @override
  Future<void> saveMangas(List<Manga> mangas) {
    return _database.batch((batch) {
      batch.insertAllOnConflictUpdate(
        _database.dbMangas,
        mangas.map((e) {
          return DbManga(
            id: e.id,
            favorite: e.favorite,
            url: e.url,
            source: e.source,
            title: e.title,
            artist: e.artist,
            description: e.description,
            genre: e.genre,
            status: e.status,
            updateStrategy: e.updateStrategy,
            initialized: e.initialized,
          );
        }),
      );
    });
  }
}

@Riverpod(keepAlive: true)
LocalDatasource localDatasource(LocalDatasourceRef ref) {
  return _DriftImpl(appDatabase: AppDatabase());
}

@riverpod
Stream<List<Manga>> watchMangasInLibrary(WatchMangasInLibraryRef ref) {
  return ref.watch(localDatasourceProvider).watchMangasInLibrary();
}
