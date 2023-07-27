import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';

@freezed
class Manga with _$Manga {
  const factory Manga({
    required String url,
    required String title,
    String? artist,
    String? author,
    String? description,
    String? genre,
    @Default(MangaStatus.unknown) MangaStatus status,
    String? thumbnailUrl,
    @Default(UpdateStrategy.alwaysUpdate) UpdateStrategy updateStrategy,
    @Default(false) bool initialized,
  }) = _Manga;

  const Manga._();

  List<String>? getGenres() {
    final localGenre = genre;
    if (localGenre == null || localGenre.isEmpty) return null;

    return localGenre
        .split(', ')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  Manga copyFrom(Manga other) {
    return Manga(
      url: url,
      title: title,
      author: author ?? other.author,
      artist: artist ?? other.artist,
      description: description ?? other.description,
      genre: genre ?? other.genre,
      status: other.status,
      thumbnailUrl: thumbnailUrl ?? other.thumbnailUrl,
      updateStrategy: other.updateStrategy,
      initialized: !initialized ? other.initialized : initialized,
    );
  }
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

enum MangaStatus {
  unknown,
  ongoing,
  completed,
  licensed,
  publishingFinished,
  cancelled,
  onHiatus,
}
