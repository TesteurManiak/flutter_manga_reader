import 'package:flutter_manga_reader/core/cache/cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_clients.g.dart';

@Riverpod(keepAlive: true)
Client cacheClient(Ref ref) =>
    CacheClient(cacheService: ref.watch(networkCacheServiceProvider));

@Riverpod(keepAlive: true)
RestClient sourceClient(Ref ref, String baseUrl) => RestClient(
      baseUri: Uri.parse(baseUrl),
      httpClient: ref.watch(cacheClientProvider),
    );
