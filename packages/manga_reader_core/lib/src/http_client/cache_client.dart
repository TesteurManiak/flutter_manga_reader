part of 'http_client.dart';

class CacheClient extends BaseClient {
  CacheClient({
    Client? httpClient,
    required this.cacheService,
  }) : _httpClient = httpClient ?? Client();

  final Client _httpClient;
  final NetworkQueryCacheService cacheService;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final cacheKey = '$request';
    final cachedResponse = await _getResponseFromCache(cacheKey, request);
    if (cachedResponse != null) return cachedResponse;

    final response = await _httpClient.send(request);
    if (response.statusCode == HttpStatus.ok) {
      return _cacheResponse(cacheKey, response);
    }

    return response;
  }

  Future<StreamedResponse?> _getResponseFromCache(
    String cacheKey,
    BaseRequest request,
  ) async {
    final cachedResponse = await cacheService.get(cacheKey);
    if (cachedResponse != null && cachedResponse.isValid) {
      final cachedJson = cachedResponse.value;

      return CachedStreamResponse(cachedJson, request: request);
    }

    return null;
  }

  Future<StreamedResponse> _cacheResponse(
    String cacheKey,
    StreamedResponse response,
  ) async {
    final responseBytes = await response.stream.toBytes();

    await cacheService.put(
      key: cacheKey,
      networkResponseJson: utf8.decode(responseBytes),
    );

    return StreamedResponse(
      Stream.value(responseBytes),
      response.statusCode,
      request: response.request,
      contentLength: response.contentLength,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
    );
  }

  /// Removes all cached responses.
  Future<void> invalidateCache() => cacheService.clear();

  /// Removes a cached response stored with the given [cacheKey].
  Future<void> invalidateCacheForKey(String cacheKey) {
    return cacheService.delete(cacheKey);
  }
}

class CachedStreamResponse extends StreamedResponse {
  CachedStreamResponse(
    String cachedJson, {
    BaseRequest? request,
  }) : super(
          Stream.value(utf8.encode(cachedJson)),
          HttpStatus.ok,
          request: request,
        );
}
