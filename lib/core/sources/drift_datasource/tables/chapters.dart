part of '../app_database.dart';

class DbChapters extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get mangaId =>
      integer().references(DbMangas, #id, onDelete: KeyAction.cascade)();
  TextColumn get url => text()();
  TextColumn get name => text()();
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
        {mangaId, url},
      ];
}
