import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';

@freezed
class Manga with _$Manga {
  const factory Manga({
    required String url,
    required String title,
    String? artist,
    String? description,
    String? genre,
    @Default(0) int status,
    String? thumbnailUrl,
    @Default(UpdateStrategy.alwaysUpdate) UpdateStrategy updateStrategy,
    @Default(false) bool initialized,
  }) = _Manga;
}

/// Define the update strategy for a manga.
/// The strategy used will only take effect on the library update.
enum UpdateStrategy {
  /// Series marked as always update will be included in the library update if
  /// they aren't excluded by additional restrictions.
  alwaysUpdate,

  /// Series marked as only fetch once will be automatically skipped during
  /// library updates. Useful for cases where the series is previously known to
  /// be finished and have only a single chapter, for example.
  onlyFetchOnce,
}
