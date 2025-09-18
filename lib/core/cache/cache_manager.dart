import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_manga_reader/core/cache/drift_cache_service.dart';
import 'package:flutter_manga_reader/core/providers/clock.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class AppCacheManager {
  const AppCacheManager({
    required NetworkQueryCacheService networkQueryCacheService,
    required CacheManager cacheManager,
  }) : _networkQueryCacheService = networkQueryCacheService,
       _cacheManager = cacheManager;

  final CacheManager _cacheManager;
  final NetworkQueryCacheService _networkQueryCacheService;

  Future<void> clearCache() async {
    await Future.wait([
      _cacheManager.emptyCache(),
      _networkQueryCacheService.clear(),
    ]);
  }
}

final networkCacheServiceProvider = Provider<NetworkQueryCacheService>((ref) {
  return DriftNetworkQueryCacheService(
    clock: ref.watch(appClockProvider),
    database: ref.watch(appDatabaseProvider),
  );
});

final cacheManagerProvider = Provider<CacheManager>(
  (Ref ref) => DefaultCacheManager(),
);

final appCacheManagerProvider = Provider<AppCacheManager>((Ref ref) {
  return AppCacheManager(
    networkQueryCacheService: ref.watch(networkCacheServiceProvider),
    cacheManager: ref.watch(cacheManagerProvider),
  );
});
