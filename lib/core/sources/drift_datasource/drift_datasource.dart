import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class DriftDatasource implements LocalDatasource {
  DriftDatasource({
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
  Future<void> saveManga(Manga manga) {
    return _database
        .into(_database.dbMangas)
        .insertOnConflictUpdate(manga.toDbModel());
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

  @override
  Future<Manga?> getManga(String mangaId) async {
    final manga = await (_database.select(_database.dbMangas)
          ..where((tbl) => tbl.id.equals(mangaId)))
        .getSingleOrNull();

    return manga?.toModel();
  }

  @override
  Future<void> updateManga(Manga manga) {
    return _database.update(_database.dbMangas).replace(manga.toDbModel());
  }
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
