import 'package:flutter_manga_reader/core/models/manga.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_datasource.g.dart';

abstract class LocalDatasource {
  Stream<List<Manga>> watchMangasInLibrary();
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
        .watch()
        .map((dbMangas) => dbMangas.map(Manga.fromDb).toList());
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
