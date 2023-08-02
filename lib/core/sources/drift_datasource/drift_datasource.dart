import 'package:drift/drift.dart';
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
  Future<Manga?> getManga(int mangaId) async {
    final manga = await (_database.select(_database.dbMangas)
          ..where((tbl) => tbl.id.equals(mangaId)))
        .getSingleOrNull();

    return manga?.toModel();
  }

  @override
  Future<void> updateManga(Manga manga) {
    return _database.update(_database.dbMangas).replace(manga.toDbModel());
  }

  @override
  Future<int?> getMangaId({
    required String title,
    required String url,
    required String? lang,
    required String? source,
  }) {
    return (_database.select(_database.dbMangas)
          ..where((t) => t.title.equals(title))
          ..where((t) => t.lang.equalsNullable(lang))
          ..where((t) => t.source.equalsNullable(source))
          ..where((t) => t.url.equals(url)))
        .getSingleOrNull()
        .then((manga) => manga?.id);
  }

  @override
  Future<int> saveSourceManga(SourceManga sourceManga) async {
    final query = (_database.delete(_database.dbMangas)
      ..where((t) => t.title.equals(sourceManga.title))
      ..where((t) => t.lang.equalsNullable(sourceManga.lang))
      ..where((t) => t.source.equalsNullable(sourceManga.source))
      ..where((t) => t.url.equals(sourceManga.url)));

    // Delete any existing source with the same title, lang, source and url
    await query.go();

    return _database.into(_database.dbMangas).insert(sourceManga.toDbModel());
  }
}

extension on DbManga {
  Manga toModel() => Manga.fromJson(toJson());
}

extension on Manga {
  DbManga toDbModel() => DbManga.fromJson(toJson());
}

extension on SourceManga {
  DbMangasCompanion toDbModel() {
    return DbMangasCompanion.insert(
      title: title,
      url: url,
      description: description != null
          ? Value.ofNullable(description)
          : const Value.absent(),
      author: author != null ? Value.ofNullable(author) : const Value.absent(),
      status: status,
      genre: genre != null ? Value.ofNullable(genre) : const Value.absent(),
      source: source != null ? Value.ofNullable(source) : const Value.absent(),
      lang: lang != null ? Value.ofNullable(lang) : const Value.absent(),
      artist: artist != null ? Value.ofNullable(artist) : const Value.absent(),
      thumbnailUrl: thumbnailUrl != null
          ? Value.ofNullable(thumbnailUrl)
          : const Value.absent(),
    );
  }
}
