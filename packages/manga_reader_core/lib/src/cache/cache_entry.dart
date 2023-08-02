import 'package:clock/clock.dart';

abstract class CacheEntry<T extends Object> {
  const CacheEntry({
    required this.key,
    required this.value,
    required this.expiry,
  });

  final String key;
  final T value;

  /// Expiry date of the cache entry.
  final DateTime expiry;

  bool get isValid => expiry.isAfter(clock.now());
}

class NetworkCacheEntry extends CacheEntry<String> {
  NetworkCacheEntry({
    required super.key,
    required this.response,
    required super.expiry,
  }) : super(value: response);

  /// Encoded JSON string of the response.
  final String response;
}
