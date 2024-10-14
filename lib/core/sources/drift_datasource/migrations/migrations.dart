import 'package:drift/drift.dart';

class DriftMigrationStrategy extends MigrationStrategy {
  @override
  OnUpgrade get onUpgrade => _onUpgrade;

  Future<void> _onUpgrade(Migrator m, int from, int to) async {
    // Downgrade
    if (from > to) {
      await _resetDatabase(m);
    }

    // Upgrade
    else if (from < to) {
      await _applyMigrations(m, from, to);
    }
  }

  Future<void> _resetDatabase(Migrator m) async {
    final allSchemaEntities = m.database.allSchemaEntities;
    for (final e in allSchemaEntities) {
      await m.drop(e);
    }

    await m.createAll();
  }

  Future<void> _applyMigrations(Migrator m, int from, int to) async {
    // if (from < 2) {
    //   // Migration from 1 to 2
    // }
  }
}
