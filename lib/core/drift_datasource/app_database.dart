import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

// This will generate a table called "mangas" for us.
// The rows of that table will be represented by a class called "Mangas".
// TODO: Other Columns should be added here. See the drift documentation for more info. You can also add new Tables to the same database. https://drift.simonbinder.eu/docs/getting-started/
class Mangas extends Table {
  IntColumn get id => integer().autoIncrement()();
}

// This annotation tells drift to prepare a database class that uses both of the table we defined above
@DriftDatabase(tables: [Mangas])
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
