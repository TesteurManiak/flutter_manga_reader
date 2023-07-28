import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class DbMangas extends Table {
  TextColumn get id => text()();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
  TextColumn get url => text()();
  TextColumn get source => text()();
  TextColumn get title => text()();
  TextColumn get artist => text().nullable()();
  TextColumn get author => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get genre => text().nullable()();
  IntColumn get status => intEnum<MangaStatus>()();
  TextColumn get thumbnailUrl => text().nullable()();
  IntColumn get updateStrategy => intEnum<UpdateStrategy>()();
  BoolColumn get initialized => boolean().withDefault(const Constant(false))();
}

class DbChapters extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get mangaId => text()();
  TextColumn get url => text()();
  TextColumn get name => text()();
  TextColumn get scanlator => text().nullable()();
  BoolColumn get read => boolean().withDefault(const Constant(false))();
  BoolColumn get bookmark => boolean().withDefault(const Constant(false))();
  IntColumn get lastPageRead => integer().withDefault(const Constant(0))();
  IntColumn get dateFetch => integer().withDefault(const Constant(0))();
  IntColumn get dateUpload => integer().withDefault(const Constant(0))();
  RealColumn get chapterNumber => real().withDefault(const Constant(0))();
  IntColumn get sourceOrder => integer().withDefault(const Constant(0))();
  IntColumn get lastModifier => integer().withDefault(const Constant(0))();
}

// This annotation tells drift to prepare a database class that uses both of the table we defined above
@DriftDatabase(tables: [DbMangas, DbChapters])
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
