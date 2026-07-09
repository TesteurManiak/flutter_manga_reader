import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/migrations/migrations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'app_database.drift.dart';
import 'tables/cache_entries.dart';
import 'tables/chapter_history.dart';
import 'tables/chapters.dart';
import 'tables/mangas.dart';
import 'tables/reading_direction.dart';

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
class AppDatabase extends $AppDatabase {
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
      final file = await _getDatabaseFile();
      return NativeDatabase.createInBackground(file);
    });
  }

  static Future<File> _getDatabaseFile() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    return File(p.join(dbFolder.path, 'appdb.sqlite'));
  }

  Future<int> getSize() async {
    final file = await _getDatabaseFile();
    return file.length();
  }

  @override
  MigrationStrategy get migration => DriftMigrationStrategy();
}

final appDatabaseProvider = Provider<AppDatabase>((ref) => AppDatabase());
