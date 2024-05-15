import 'package:freezed_annotation/freezed_annotation.dart';

/// Define the update strategy for a single `SourceManga`. The strategy used
/// will only take effect on the library update.
enum UpdateStrategy {
  /// Series marked as always update will be included in the library update if
  /// they aren't excluded by additional restrictions.
  @JsonValue(0)
  alwaysUpdate,

  /// Series marked as only fetch once will be automatically skipped during
  /// library updates. Useful for cases where the series is already fully known
  /// to be finished and have only a single chapter.
  @JsonValue(1)
  onlyFetchOnce,
}
