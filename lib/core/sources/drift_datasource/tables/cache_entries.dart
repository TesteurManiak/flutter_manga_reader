import 'package:drift/drift.dart';

class DbCacheEntries extends Table {
  TextColumn get key => text()();
  TextColumn get response => text()();
  DateTimeColumn get expiry => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {key};
}
