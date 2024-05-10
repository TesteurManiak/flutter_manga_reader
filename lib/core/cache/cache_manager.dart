import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_manga_reader/core/cache/drift_cache_service.dart';
import 'package:flutter_manga_reader/core/providers/clock.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_manager.g.dart';

class AppCacheManager {
  const AppCacheManager({
    required NetworkQueryCacheService networkQueryCacheService,
    required CacheManager cacheManager,
  })  : _networkQueryCacheService = networkQueryCacheService,
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

@Riverpod(keepAlive: true)
NetworkQueryCacheService networkCacheService(NetworkCacheServiceRef ref) {
  return DriftNetworkQueryCacheService(
    clock: ref.watch(appClockProvider),
    database: ref.watch(appDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
CacheManager cacheManager(CacheManagerRef ref) {
  return DefaultCacheManager();
}

@Riverpod(keepAlive: true)
AppCacheManager appCacheManager(AppCacheManagerRef ref) {
  return AppCacheManager(
    networkQueryCacheService: ref.watch(networkCacheServiceProvider),
    cacheManager: ref.watch(cacheManagerProvider),
  );
}
