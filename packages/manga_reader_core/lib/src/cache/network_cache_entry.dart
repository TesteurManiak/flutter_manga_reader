import 'package:clock/clock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_cache_entry.freezed.dart';
part 'network_cache_entry.g.dart';

@Freezed(toJson: true)
class NetworkCacheEntry with _$NetworkCacheEntry {
  const factory NetworkCacheEntry({
    required String key,

    /// Encoded JSON string of the response.
    required String value,

    /// Expiry date of the cache entry.
    required DateTime expiry,
  }) = _NetworkCacheEntry;

  factory NetworkCacheEntry.fromJson(Map<String, dynamic> json) =>
      _$NetworkCacheEntryFromJson(json);

  const NetworkCacheEntry._();

  bool get isValid => expiry.isAfter(clock.now());
}
