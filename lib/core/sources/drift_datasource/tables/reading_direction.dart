part of '../app_database.dart';

class DbReadingDirection extends Table {
  IntColumn get mangaId =>
      integer().references(DbMangas, #id, onDelete: KeyAction.cascade)();
  IntColumn get direction => intEnum<ReadingDirection>()();

  @override
  Set<Column<Object>>? get primaryKey => {mangaId};
}
