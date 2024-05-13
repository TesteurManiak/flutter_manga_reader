import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter_manga_reader/core/extensions/chapter_extensions.dart';
import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path_provider/path_provider.dart';

class DriftDatasource implements LocalDatasource {
  DriftDatasource({required AppDatabase appDatabase}) : _db = appDatabase;

  final AppDatabase _db;

  @override
  Stream<List<Manga>> watchMangasInLibrary() {
    return (_db.select(_db.dbMangas)..where((tbl) => tbl.favorite.equals(true)))
        .watch()
        .map((mangas) => mangas.map((e) => e.toModel()).toList());
  }

  @override
  Future<void> saveManga(Manga manga) {
    return _db.into(_db.dbMangas).insertOnConflictUpdate(manga.toDbModel());
  }

  @override
  Future<void> saveMangas(List<Manga> mangas) {
    return _db.batch((batch) {
      batch.insertAllOnConflictUpdate<$DbMangasTable, DbManga>(
        _db.dbMangas,
        mangas.map((e) => e.toDbModel()),
      );
    });
  }

  @override
  Future<Manga?> getManga(int mangaId) async {
    final manga = await (_db.select(_db.dbMangas)
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
    return (_db.select(_db.dbMangas)
          ..where((t) => t.title.equals(title))
          ..where((t) => t.lang.equalsNullable(lang))
          ..where((t) => t.source.equalsNullable(source))
          ..where((t) => t.url.equals(url)))
        .getSingleOrNull()
        .then((manga) => manga?.id);
  }

  @override
  Future<int> saveSourceManga(SourceManga sourceManga) async {
    final query = (_db.delete(_db.dbMangas)
      ..where((t) => t.title.equals(sourceManga.title))
      ..where((t) => t.lang.equalsNullable(sourceManga.lang))
      ..where((t) => t.source.equalsNullable(sourceManga.source))
      ..where((t) => t.url.equals(sourceManga.url)));

    // Delete any existing source with the same title, lang, source and url
    await query.go();

    return _db.into(_db.dbMangas).insert(sourceManga.toCompanion());
  }

  @override
  Future<void> saveSourceChapters(
    List<SourceChapter> sourceChapters,
    int mangaId,
  ) async {
    final chapters = sourceChapters.map((e) => e.toCompanion(mangaId)).toList();
    return _db.batch((batch) {
      batch.insertAll<$DbChaptersTable, DbChapter>(
        _db.dbChapters,
        chapters,
        onConflict: DoUpdate(
          (old) => DbChaptersCompanion.custom(
            index: old.index,
            read: old.read,
            bookmark: old.bookmark,
            lastPageRead: old.lastPageRead,
          ),
          target: _db.dbChapters.uniqueKeys.first.toList(),
        ),
      );
    });
  }

  @override
  Future<Chapter?> getChapter(int chapterId) {
    return (_db.select(_db.dbChapters)..where((t) => t.id.equals(chapterId)))
        .getSingleOrNull()
        .then((chapter) => chapter?.toModel());
  }

  @override
  Stream<List<Chapter>> watchChaptersForManga(int mangaId) {
    return (_db.select(_db.dbChapters)
          ..where((t) => t.mangaId.equals(mangaId))
          ..orderBy([(t) => OrderingTerm(expression: t.index)]))
        .watch()
        .map((chapters) => chapters.map((e) => e.toModel()).toList());
  }

  @override
  Future<void> setChaptersRead({
    required List<int> chapterIds,
    required bool read,
  }) {
    return (_db.update(_db.dbChapters)..where((t) => t.id.isIn(chapterIds)))
        .write(
      DbChaptersCompanion(
        read: Value(read),
        lastPageRead: const Value(0),
      ),
    );
  }

  @override
  Future<void> setMangaFavorite({
    required int mangaId,
    required bool favorite,
  }) {
    return (_db.update(_db.dbMangas)..where((t) => t.id.equals(mangaId)))
        .write(DbMangasCompanion(favorite: Value(favorite)));
  }

  @override
  Stream<Manga?> watchManga(int id) {
    return (_db.select(_db.dbMangas)..where((t) => t.id.equals(id)))
        .watchSingleOrNull()
        .map((manga) => manga?.toModel());
  }

  @override
  Stream<List<Chapter>> watchUnreadChaptersForManga(int mangaId) {
    return (_db.select(_db.dbChapters)
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
    return (_db.update(_db.dbChapters)..where((t) => t.id.equals(chapterId)))
        .write(DbChaptersCompanion(lastPageRead: Value(lastPageRead)));
  }

  @override
  Stream<ReadingDirection> watchReadingDirection(int mangaId) {
    return (_db.select(_db.dbReadingDirection)
          ..where((t) => t.mangaId.equals(mangaId)))
        .watchSingleOrNull()
        .map((data) => data?.direction ?? ReadingDirection.leftToRight);
  }

  @override
  Future<void> setReadingDirection({
    required int mangaId,
    required ReadingDirection direction,
  }) {
    return _db.into(_db.dbReadingDirection).insertOnConflictUpdate(
          DbReadingDirectionData(mangaId: mangaId, direction: direction),
        );
  }

  @override
  Future<void> setChaptersDownloaded({
    required List<int> chapterIds,
    required bool downloaded,
  }) {
    return (_db.update(_db.dbChapters)..where((tbl) => tbl.id.isIn(chapterIds)))
        .write(DbChaptersCompanion(downloaded: Value(downloaded)));
  }

  @override
  Future<void> deleteChapters(List<int> chapterIds) async {
    try {
      final localDir = await getApplicationDocumentsDirectory();
      final localChapters = await (_db.select(_db.dbChapters)
            ..where((tbl) => tbl.id.isIn(chapterIds)))
          .get();

      final futures = <Future<void>>[];
      for (final chapter in localChapters) {
        final chapterPath = chapter.getFullLocalPath(localDir);
        final chapterDir = Directory(chapterPath);
        if (chapterDir.existsSync()) {
          futures.add(chapterDir.delete(recursive: true));
        }
      }

      // Delete local files
      await Future.wait(futures);
    } finally {
      // Update database
      await (_db.update(_db.dbChapters)
            ..where((tbl) => tbl.id.isIn(chapterIds)))
          .write(const DbChaptersCompanion(downloaded: Value(false)));
    }
  }

  @override
  Stream<List<ChapterHistory>> watchHistory() {
    final query = (_db.select(_db.dbChapterHistory)
          ..orderBy([(t) => OrderingTerm.desc(t.readAt)]))
        .join([
      leftOuterJoin(
        _db.dbMangas,
        _db.dbMangas.id.equalsExp(_db.dbChapterHistory.mangaId),
      ),
      leftOuterJoin(
        _db.dbChapters,
        _db.dbChapters.id.equalsExp(_db.dbChapterHistory.chapterId),
      ),
    ]);

    return query.watch().map((rows) {
      return rows.map((row) {
        return ChapterHistory(
          manga: row.readTable(_db.dbMangas).toModel(),
          chapter: row.readTable(_db.dbChapters).toModel(),
          readAt: row.readTable(_db.dbChapterHistory).readAt,
        );
      }).toList();
    });
  }

  @override
  Future<void> saveChapterHistory(ChapterHistory chapterHistory) {
    return _db.into(_db.dbChapterHistory).insertOnConflictUpdate(
          DbChapterHistoryCompanion.insert(
            mangaId: Value(chapterHistory.manga.id),
            chapterId: chapterHistory.chapter.id,
            readAt: chapterHistory.readAt,
          ),
        );
  }

  @override
  Future<void> deleteChapterHistory(int mangaId) {
    return (_db.delete(_db.dbChapterHistory)
          ..where((tbl) => tbl.mangaId.equals(mangaId)))
        .go();
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
      description: Value.absentIfNull(description),
      author: Value.absentIfNull(author),
      status: status,
      genre: Value.absentIfNull(genre),
      source: source,
      lang: lang,
      artist: Value.absentIfNull(artist),
      thumbnailUrl: Value.absentIfNull(thumbnailUrl),
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
      scanlator: Value.absentIfNull(scanlator),
    );
  }
}
