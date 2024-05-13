import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

class DbMangas extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get url => text()();
  TextColumn get description => text().nullable()();
  TextColumn get author => text().nullable()();
  IntColumn get status => intEnum<MangaStatus>()();
  TextColumn get genre => text().nullable()();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
  TextColumn get source => text()();
  TextColumn get lang => text()();
  TextColumn get artist => text().nullable()();
  TextColumn get thumbnailUrl => text().nullable()();
  BoolColumn get initialized => boolean().withDefault(const Constant(false))();
}

class DbChapters extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get mangaId => integer()();
  TextColumn get url => text()();
  TextColumn get name => text()();
  IntColumn get index => integer()();
  DateTimeColumn get dateUpload => dateTime().nullable()();
  RealColumn get chapterNumber => real().withDefault(const Constant(-1))();
  TextColumn get scanlator => text().nullable()();
  BoolColumn get read => boolean().withDefault(const Constant(false))();
  BoolColumn get downloaded => boolean().withDefault(const Constant(false))();
  BoolColumn get bookmark => boolean().withDefault(const Constant(false))();
  IntColumn get lastPageRead => integer().withDefault(const Constant(0))();
  DateTimeColumn get dateFetch => dateTime().nullable()();
  DateTimeColumn get lastModified => dateTime().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {mangaId, url, name},
      ];
}

class DbReadingDirection extends Table {
  IntColumn get mangaId => integer()();
  IntColumn get direction => intEnum<ReadingDirection>()();

  @override
  Set<Column<Object>>? get primaryKey => {mangaId};
}

class DbCacheEntries extends Table {
  TextColumn get key => text()();
  TextColumn get response => text()();
  DateTimeColumn get expiry => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {key};
}

class DbChapterHistory extends Table {
  IntColumn get mangaId => integer()();
  IntColumn get chapterId => integer()();
  DateTimeColumn get dateRead => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {mangaId};
}

// This annotation tells drift to prepare a database class that uses both of the table we defined above
@DriftDatabase(
  tables: [
    DbMangas,
    DbChapters,
    DbReadingDirection,
    DbCacheEntries,
    DbChapterHistory,
  ],
)
class AppDatabase extends _$AppDatabase {
  // We tell the database where to store the data with this constructor
  AppDatabase() : super(_openConnection());

  // Should be bumped whenever there is a change or addition to a table definition.
  // Migrations are covered in the drift documentation.
  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    // The LazyDatabase util lets us find the right location for the file async.
    return LazyDatabase(() async {
      // Put the database file, called db.sqlite here, into the documents folder
      // for your app.
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'appdb.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
  }
}

@Riverpod(keepAlive: true)
AppDatabase appDatabase(AppDatabaseRef ref) => AppDatabase();
