import 'package:clock/clock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_cache_entry.freezed.dart';

@freezed
class NetworkCacheEntry with _$NetworkCacheEntry {
  const factory NetworkCacheEntry({
    required String key,

    /// Encoded JSON string of the response.
    required String value,

    /// Expiry date of the cache entry.
    required DateTime expiry,
  }) = _NetworkCacheEntry;

  const NetworkCacheEntry._();

  bool get isValid => expiry.isAfter(clock.now());
}
