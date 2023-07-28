import 'package:clock/clock.dart';

class NetworkCacheEntry {
  NetworkCacheEntry({
    required this.key,
    required this.value,
    required this.expiry,
  });

  final String key;

  /// Encoded JSON string of the response.
  final String value;

  /// Expiry date of the cache entry.
  final DateTime expiry;

  bool get isValid => expiry.isAfter(clock.now());
}
