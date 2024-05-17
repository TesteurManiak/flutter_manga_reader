import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter_manga_reader/core/extensions/backup_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/chapter_extensions.dart';
import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/gen/tachiyomi.pb.dart' as pb;
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path_provider/path_provider.dart';

class DriftDatasource extends LocalDatasource {
  DriftDatasource({required AppDatabase appDatabase}) : _db = appDatabase;

  final AppDatabase _db;

  @override
  Future<Manga> getMangaById(int mangaId) async {
    final manga = await (_db.select(_db.dbMangas)
          ..where((tbl) => tbl.id.equals(mangaId)))
        .getSingle();

    return manga.toModel();
  }

  @override
  Stream<Manga> watchMangaById(int id) {
    return (_db.select(_db.dbMangas)..where((t) => t.id.equals(id)))
        .watchSingle()
        .map((manga) => manga.toModel());
  }

  @override
  Future<Manga?> getMangaByUrlAndSourceId({
    required String url,
    required String sourceId,
  }) {
    return (_db.select(_db.dbMangas)
          ..where((t) => t.url.equals(url) & t.sourceId.equals(sourceId)))
        .getSingleOrNull()
        .then((value) => value?.toModel());
  }

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
  Future<int> saveSourceManga(SourceManga sourceManga) async {
    // Delete any existing source with the same title, lang, source and url
    await (_db.delete(_db.dbMangas)
          ..where(
            (t) =>
                t.title.equals(sourceManga.title) &
                t.sourceId.equals(sourceManga.sourceId) &
                t.url.equals(sourceManga.url),
          ))
        .go();

    return _db.into(_db.dbMangas).insert(sourceManga.insert());
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
          ..orderBy([
            (t) => OrderingTerm.desc(t.chapterNumber),
            (t) => OrderingTerm.desc(t.dateUpload),
          ]))
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
  Stream<List<Chapter>> watchUnreadChaptersForManga(int mangaId) {
    return (_db.select(_db.dbChapters)
          ..where((t) => t.mangaId.equals(mangaId) & t.read.equals(false)))
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

  @override
  Future<void> saveMangaData(MangaFetchRecord record) async {
    return _db.batch((batch) {
      final mangaData = record.manga.toDbModel();
      batch.insert(
        _db.dbMangas,
        mangaData,
        onConflict: DoUpdate((_) => mangaData),
      );
      for (final chapter in record.sourceChapters) {
        final chapterData = chapter.insert(record.manga.id);
        batch.insert(
          _db.dbChapters,
          chapterData,
          onConflict: DoUpdate(
            (_) => chapterData,
            target: _db.dbChapters.uniqueKeys.first.toList(),
          ),
        );
      }
    });
  }

  @override
  Future<void> saveMangaDatas(List<MangaFetchRecord> records) {
    return _db.batch((batch) {
      for (final record in records) {
        final mangaData = record.manga.toDbModel();
        batch.insert(
          _db.dbMangas,
          mangaData,
          onConflict: DoUpdate((_) => mangaData),
        );

        for (final chapter in record.sourceChapters) {
          final chapterData = chapter.insert(record.manga.id);
          batch.insert(
            _db.dbChapters,
            chapterData,
            onConflict: DoUpdate(
              (_) => chapterData,
              target: _db.dbChapters.uniqueKeys.first.toList(),
            ),
          );
        }
      }
    });
  }

  @override
  Future<void> applyTachiyomiBackup({
    required List<pb.BackupManga> mangas,
    required bool keepPreviousData,
  }) async {
    if (!keepPreviousData) {
      await _db.batch((batch) {
        batch
          ..deleteAll(_db.dbMangas)
          ..deleteAll(_db.dbChapters)
          ..deleteAll(_db.dbChapterHistory);
      });
    }

    for (final manga in mangas) {
      // Insert manga
      final mangaData = manga.insert();
      final id = await _db.into(_db.dbMangas).insert(mangaData);

      await _db.batch((batch) {
        // Insert chapters
        final chapterDatas = manga.chapters.map((e) => e.insert(id));
        batch.insertAll(_db.dbChapters, chapterDatas);
      });
    }
  }
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
  DbManga toDbModel() {
    return DbManga(
      id: id,
      sourceId: sourceId,
      favorite: favorite,
      fetchInterval: fetchInterval,
      dateAdded: dateAdded,
      url: url,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: getGenre(),
      status: status,
      thumbnailUrl: thumbnailUrl,
      updateStrategy: updateStrategy,
      initialized: initialized,
      lastModifiedAt: lastModifiedAt,
    );
  }
}

extension on SourceManga {
  DbMangasCompanion insert({bool? favorite}) {
    return DbMangasCompanion.insert(
      url: Value(url),
      title: Value(title),
      artist: Value.absentIfNull(artist),
      author: Value.absentIfNull(author),
      description: Value.absentIfNull(description),
      genre: Value.absentIfNull(genre),
      status: Value(status),
      thumbnailUrl: Value.absentIfNull(thumbnailUrl),
      initialized: Value(initialized),
      updateStrategy: Value(updateStrategy),
      sourceId: sourceId,
      favorite: Value.absentIfNull(favorite),
    );
  }
}

extension on SourceChapter {
  DbChaptersCompanion insert(int mangaId) {
    return DbChaptersCompanion.insert(
      mangaId: mangaId,
      url: url,
      name: name,
      dateUpload: Value.absentIfNull(dateUpload),
      chapterNumber: Value(chapterNumber),
      scanlator: Value.absentIfNull(scanlator),
    );
  }
}

extension on pb.BackupManga {
  DbMangasCompanion insert() {
    final dbUrl = Uri.parse(url).path;
    final dbArtist = artist.isNotEmpty ? artist : null;
    final dbAuthor = author.isNotEmpty ? author : null;
    final dbDesc = description.isNotEmpty ? description : null;
    final dbGenre = genre.isNotEmpty ? genre.join(',') : null;
    final dbStatus = MangaStatus.tryFromIndex(status);
    final dbThumbnail = thumbnailUrl.isNotEmpty ? thumbnailUrl : null;

    return DbMangasCompanion.insert(
      sourceId: source.toString(),
      url: Value(dbUrl),
      title: Value(title),
      artist: Value.absentIfNull(dbArtist),
      author: Value.absentIfNull(dbAuthor),
      description: Value.absentIfNull(dbDesc),
      genre: Value.absentIfNull(dbGenre),
      status: Value.absentIfNull(dbStatus),
      thumbnailUrl: Value.absentIfNull(dbThumbnail),
      dateAdded: Value(dateAdded.toDateTime()),
      favorite: const Value(true),
      updateStrategy: Value(updateStrategy.toUpdateStrategy()),
      lastModifiedAt: Value(lastModifiedAt.toDateTime()),
    );
  }
}

extension on pb.BackupChapter {
  DbChaptersCompanion insert(int mangaId) {
    final dbUrl = Uri.parse(url).path;
    final dbScanlator = scanlator.isNotEmpty ? scanlator : null;
    final dbLastPageRead = lastPageRead > 0 ? lastPageRead.toInt() : null;

    return DbChaptersCompanion.insert(
      mangaId: mangaId,
      url: dbUrl,
      name: name,
      dateUpload: Value(dateUpload.toDateTime()),
      chapterNumber: Value(chapterNumber),
      scanlator: Value.absentIfNull(dbScanlator),
      read: Value(read),
      bookmark: Value(bookmark),
      lastPageRead:
          read ? const Value.absent() : Value.absentIfNull(dbLastPageRead),
      dateFetch: Value(dateFetch.toDateTime()),
      lastModified: Value(lastModifiedAt.toDateTime()),
    );
  }
}
