import 'package:clock/clock.dart';
import 'package:flutter_manga_reader/core/cache/isar_cache_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path_provider/path_provider.dart';

class IsarNetworkQueryCacheService extends NetworkQueryCacheService {
  static const _instanceName = 'isar_cache_service';

  @protected
  Future<Isar> getInstance() async {
    return Isar.getInstance(_instanceName) ??
        await Isar.open(
          [IsarCacheEntrySchema],
          directory: (await getApplicationDocumentsDirectory()).path,
          name: _instanceName,
        );
  }

  @override
  Future<void> delete(String key) async {
    final isar = await getInstance();

    return isar.writeTxn(() {
      return isar.isarCacheEntrys.deleteByIsarKey(key);
    });
  }

  @protected
  Future<NetworkCacheEntry?> validateCacheEntry(
    NetworkCacheEntry? cacheEntry,
  ) async {
    if (cacheEntry != null && !cacheEntry.isValid) {
      await delete(cacheEntry.key);
      return null;
    }

    return cacheEntry;
  }

  @override
  Future<NetworkCacheEntry?> get(String key) async {
    final isar = await getInstance();
    final entry = await isar.isarCacheEntrys.getByIsarKey(key);

    return validateCacheEntry(entry);
  }

  @override
  Future<void> put({
    required String key,
    required String networkResponseJson,
  }) async {
    final entry = IsarCacheEntry(
      isarKey: key,
      value: networkResponseJson,
      expiry: clock.now().add(cacheDuration),
    );

    final isar = await getInstance();
    await isar.writeTxn(() async {
      // cleanup old cache entries
      await isar.isarCacheEntrys
          .filter()
          .expiryLessThan(clock.now())
          .deleteAll();

      await isar.isarCacheEntrys.put(entry);
    });
  }

  @override
  Future<void> clear() async {
    final isar = await getInstance();
    return isar.isarCacheEntrys.clear();
  }
}
