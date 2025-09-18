import 'package:flutter_manga_reader/core/cache/cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final cacheClientProvider = Provider<Client>((Ref ref) {
  return CacheClient(cacheService: ref.watch(networkCacheServiceProvider));
});

final sourceClientProvider = Provider.family<RestClient, String>((
  Ref ref,
  String baseUrl,
) {
  return RestClient(
    baseUri: Uri.parse(baseUrl),
    httpClient: ref.watch(cacheClientProvider),
  );
});
