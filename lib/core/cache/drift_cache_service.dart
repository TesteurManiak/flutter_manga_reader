import 'package:clock/clock.dart';
import 'package:drift/drift.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class DriftNetworkQueryCacheService extends NetworkQueryCacheService {
  DriftNetworkQueryCacheService({
    required Clock clock,
    required AppDatabase database,
  })  : _clock = clock,
        _database = database;

  final Clock _clock;
  final AppDatabase _database;

  @override
  Future<void> clear() => _database.dbCacheEntries.deleteAll();

  @override
  Future<void> clearExpiredEntries() {
    return (_database.delete(_database.dbCacheEntries)
          ..where((t) => t.expiry.isSmallerThanValue(_clock.now())))
        .go();
  }

  @override
  Future<void> delete(String key) {
    return (_database.delete(_database.dbCacheEntries)
          ..where((t) => t.key.equals(key)))
        .go();
  }

  @override
  Future<NetworkCacheEntry?> get(String key) {
    final query = _database.select(_database.dbCacheEntries)
      ..where((t) => t.key.equals(key));
    return query.map((r) {
      return NetworkCacheEntry(
        key: r.key,
        response: r.response,
        expiry: r.expiry,
      );
    }).getSingleOrNull();
  }

  @override
  Future<void> put({required String key, required String networkResponseJson}) {
    final entry = DbCacheEntry(
      key: key,
      response: networkResponseJson,
      expiry: _clock.now().add(cacheDuration),
    );

    return _database
        .into(_database.dbCacheEntries)
        .insertOnConflictUpdate(entry);
  }
}
