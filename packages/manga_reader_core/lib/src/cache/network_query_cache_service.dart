import 'package:manga_reader_core/src/cache/network_cache_entry.dart';

const kCacheDefaultDuration = Duration(minutes: 10);

/// {@template network_query_cache_service}
/// Interface used to cache network response as encoded JSON.
/// {@endtemplate}
abstract class NetworkQueryCacheService {
  /// {@macro network_query_cache_service}
  const NetworkQueryCacheService({
    this.cacheDuration = kCacheDefaultDuration,
  });

  /// Duration before the cache is considered stale.
  final Duration cacheDuration;

  /// Returns the cached response for the given [key].
  Future<NetworkCacheEntry?> get(String key);

  /// Stores the given [networkResponseJson] for the given [key].
  Future<void> put({
    required String key,
    required String networkResponseJson,
  });

  /// Deletes the cached response for the given [key].
  Future<void> delete(String key);

  /// Clears the cache.
  Future<void> clear();

  /// Clears all expired entries from the cache.
  Future<void> clearExpiredEntries();
}
