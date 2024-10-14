part of '../app_database.dart';

class DbChapterHistory extends Table {
  IntColumn get mangaId =>
      integer().references(DbMangas, #id, onDelete: KeyAction.cascade)();
  IntColumn get chapterId =>
      integer().references(DbChapters, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get readAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {mangaId};
}
