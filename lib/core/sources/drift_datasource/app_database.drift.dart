// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/mangas.drift.dart'
    as i1;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/chapters.drift.dart'
    as i2;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/reading_direction.drift.dart'
    as i3;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/cache_entries.drift.dart'
    as i4;
import 'package:flutter_manga_reader/core/sources/drift_datasource/tables/chapter_history.drift.dart'
    as i5;

abstract class $AppDatabase extends i0.GeneratedDatabase {
  $AppDatabase(i0.QueryExecutor e) : super(e);
  late final i1.$DbMangasTable dbMangas = i1.$DbMangasTable(this);
  late final i2.$DbChaptersTable dbChapters = i2.$DbChaptersTable(this);
  late final i3.$DbReadingDirectionTable dbReadingDirection = i3
      .$DbReadingDirectionTable(this);
  late final i4.$DbCacheEntriesTable dbCacheEntries = i4.$DbCacheEntriesTable(
    this,
  );
  late final i5.$DbChapterHistoryTable dbChapterHistory = i5
      .$DbChapterHistoryTable(this);
  @override
  Iterable<i0.TableInfo<i0.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<i0.TableInfo<i0.Table, Object?>>();
  @override
  List<i0.DatabaseSchemaEntity> get allSchemaEntities => [
    dbMangas,
    dbChapters,
    dbReadingDirection,
    dbCacheEntries,
    dbChapterHistory,
    i1.mangaSourceId,
    i1.mangaFavorite,
    i1.mangaUrl,
    i1.mangaTitle,
    i2.chapterMangaId,
    i2.chapterDateUpload,
    i2.chapterNumber,
    i2.chapterRead,
    i5.chapterHistoryReadAt,
  ];
  @override
  i0.StreamQueryUpdateRules get streamUpdateRules =>
      const i0.StreamQueryUpdateRules([
        i0.WritePropagation(
          on: i0.TableUpdateQuery.onTableName(
            'db_mangas',
            limitUpdateKind: i0.UpdateKind.delete,
          ),
          result: [i0.TableUpdate('db_chapters', kind: i0.UpdateKind.delete)],
        ),
        i0.WritePropagation(
          on: i0.TableUpdateQuery.onTableName(
            'db_mangas',
            limitUpdateKind: i0.UpdateKind.delete,
          ),
          result: [
            i0.TableUpdate('db_reading_direction', kind: i0.UpdateKind.delete),
          ],
        ),
        i0.WritePropagation(
          on: i0.TableUpdateQuery.onTableName(
            'db_mangas',
            limitUpdateKind: i0.UpdateKind.delete,
          ),
          result: [
            i0.TableUpdate('db_chapter_history', kind: i0.UpdateKind.delete),
          ],
        ),
        i0.WritePropagation(
          on: i0.TableUpdateQuery.onTableName(
            'db_chapters',
            limitUpdateKind: i0.UpdateKind.delete,
          ),
          result: [
            i0.TableUpdate('db_chapter_history', kind: i0.UpdateKind.delete),
          ],
        ),
      ]);
}
