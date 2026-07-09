import 'package:drift/drift.dart';

import '../../../models/reading_direction.dart';
import 'mangas.dart';

class DbReadingDirection extends Table {
  IntColumn get mangaId =>
      integer().references(DbMangas, #id, onDelete: KeyAction.cascade)();
  IntColumn get direction => intEnum<ReadingDirection>()();

  @override
  Set<Column<Object>>? get primaryKey => {mangaId};
}
