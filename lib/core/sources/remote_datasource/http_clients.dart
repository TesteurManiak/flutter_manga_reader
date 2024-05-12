import 'package:flutter_manga_reader/core/cache/cache_manager.dart';
import 'package:http/http.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_clients.g.dart';

@Riverpod(keepAlive: true)
Client cacheClient(CacheClientRef ref) {
  return CacheClient(cacheService: ref.watch(networkCacheServiceProvider));
}
