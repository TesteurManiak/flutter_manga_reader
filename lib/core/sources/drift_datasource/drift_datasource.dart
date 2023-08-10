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
      batch.insertAllOnConflictUpdate<$DbMangasTable, DbManga>(
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

    return _database.into(_database.dbMangas).insert(sourceManga.toCompanion());
  }

  @override
  Future<void> saveSourceChapters(
    List<SourceChapter> sourceChapters,
    int mangaId,
  ) async {
    final chapters = sourceChapters.map((e) => e.toCompanion(mangaId)).toList();
    return _database.batch((batch) {
      batch.insertAll<$DbChaptersTable, DbChapter>(
        _database.dbChapters,
        chapters,
        onConflict: DoUpdate(
          (old) => DbChaptersCompanion.custom(
            index: old.index,
            read: old.read,
            bookmark: old.bookmark,
            lastPageRead: old.lastPageRead,
          ),
          target: _database.dbChapters.uniqueKeys.first.toList(),
        ),
      );
    });
  }

  @override
  Future<Chapter?> getChapter(int chapterId) {
    return (_database.select(_database.dbChapters)
          ..where((t) => t.id.equals(chapterId)))
        .getSingleOrNull()
        .then((chapter) => chapter?.toModel());
  }

  @override
  Stream<List<Chapter>> watchChaptersForManga(int mangaId) {
    return (_database.select(_database.dbChapters)
          ..where((t) => t.mangaId.equals(mangaId))
          ..orderBy([(t) => OrderingTerm(expression: t.index)]))
        .watch()
        .map((chapters) => chapters.map((e) => e.toModel()).toList());
  }

  @override
  Future<void> setChapterRead({required int chapterId, required bool read}) {
    return (_database.update(_database.dbChapters)
          ..where((t) => t.id.equals(chapterId)))
        .write(DbChaptersCompanion(read: Value(read)));
  }

  @override
  Future<void> setChaptersRead({
    required List<int> chapterIds,
    required bool read,
  }) {
    return (_database.update(_database.dbChapters)
          ..where((t) => t.id.isIn(chapterIds)))
        .write(DbChaptersCompanion(read: Value(read)));
  }

  @override
  Future<void> setMangaFavorite({
    required int mangaId,
    required bool favorite,
  }) {
    return (_database.update(_database.dbMangas)
          ..where((t) => t.id.equals(mangaId)))
        .write(DbMangasCompanion(favorite: Value(favorite)));
  }

  @override
  Stream<Manga?> watchManga(int id) {
    return (_database.select(_database.dbMangas)..where((t) => t.id.equals(id)))
        .watchSingleOrNull()
        .map((manga) => manga?.toModel());
  }

  @override
  Stream<List<Chapter>> watchUnreadChaptersForManga(int mangaId) {
    return (_database.select(_database.dbChapters)
          ..where((t) => t.mangaId.equals(mangaId))
          ..where((t) => t.read.equals(false))
          ..orderBy([(t) => OrderingTerm(expression: t.index)]))
        .watch()
        .map((chapters) => chapters.map((e) => e.toModel()).toList());
  }

  @override
  Future<void> setChapterLastPageRead({
    required int chapterId,
    required int lastPageRead,
  }) {
    return (_database.update(_database.dbChapters)
          ..where((t) => t.id.equals(chapterId)))
        .write(DbChaptersCompanion(lastPageRead: Value(lastPageRead)));
  }
}

extension on DbManga {
  Manga toModel() => Manga.fromJson(toJson());
}

extension on DbChapter {
  Chapter toModel() => Chapter.fromJson(
        toJson(
          serializer: const ValueSerializer.defaults(
            serializeDateTimeValuesAsString: true,
          ),
        ),
      );
}

extension on Manga {
  DbManga toDbModel() => DbManga.fromJson(toJson());
}

extension on SourceManga {
  DbMangasCompanion toCompanion() {
    return DbMangasCompanion.insert(
      title: title,
      url: url,
      description: description != null
          ? Value.ofNullable(description)
          : const Value.absent(),
      author: author != null ? Value.ofNullable(author) : const Value.absent(),
      status: status,
      genre: genre != null ? Value.ofNullable(genre) : const Value.absent(),
      source: source,
      lang: lang,
      artist: artist != null ? Value.ofNullable(artist) : const Value.absent(),
      thumbnailUrl: thumbnailUrl != null
          ? Value.ofNullable(thumbnailUrl)
          : const Value.absent(),
    );
  }
}

extension on SourceChapter {
  DbChaptersCompanion toCompanion(int mangaId) {
    return DbChaptersCompanion.insert(
      mangaId: mangaId,
      url: url,
      name: name,
      index: index,
      dateUpload: Value(dateUpload),
      chapterNumber: Value(chapterNumber),
      scanlator: scanlator != null
          ? Value.ofNullable(scanlator)
          : const Value.absent(),
    );
  }
}
