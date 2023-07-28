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
    return (_database.select(_database.dbMangas)
          ..where((tbl) => tbl.favorite.equals(true)))
        .watch()
        .map((mangas) => mangas.map((e) => e.toModel()).toList());
  }

  @override
  Future<void> saveMangas(List<Manga> mangas) {
    return _database.batch((batch) {
      batch.insertAllOnConflictUpdate(
        _database.dbMangas,
        mangas.map((e) => e.toDbModel()),
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

extension on DbManga {
  Manga toModel() {
    return Manga(
      id: id,
      favorite: favorite,
      url: url,
      source: source,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: genre,
      status: status,
      thumbnailUrl: thumbnailUrl,
      updateStrategy: updateStrategy,
      initialized: initialized,
    );
  }
}

extension on Manga {
  DbManga toDbModel() {
    return DbManga(
      id: id,
      favorite: favorite,
      url: url,
      source: source,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: genre,
      status: status,
      thumbnailUrl: thumbnailUrl,
      updateStrategy: updateStrategy,
      initialized: initialized,
    );
  }
}
