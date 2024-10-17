part of '../app_database.dart';

@TableIndex(name: 'chapter_history_read_at', columns: {#readAt})
class DbChapterHistory extends Table {
  IntColumn get mangaId =>
      integer().references(DbMangas, #id, onDelete: KeyAction.cascade)();
  IntColumn get chapterId =>
      integer().references(DbChapters, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get readAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {mangaId};
}
