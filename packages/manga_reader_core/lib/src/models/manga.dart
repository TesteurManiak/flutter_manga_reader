import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/manga_status.dart';
import 'package:manga_reader_core/src/models/source_manga.dart';
import 'package:manga_reader_core/src/models/update_strategy.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

/// Model used to handle manga data fetched from the database.
@freezed
class Manga with _$Manga {
  const factory Manga({
    required int id,
    required String url,
    required String title,
    String? artist,
    String? author,
    String? description,
    String? genre,
    @Default(MangaStatus.unknown) @MangaStatusConverter() MangaStatus status,
    String? thumbnailUrl,
    @Default(false) bool initialized,
    @Default(UpdateStrategy.alwaysUpdate) UpdateStrategy updateStrategy,
    @Default(false) bool favorite,
    required String sourceId,
  }) = _Manga;

  /// Used to create model from the database entity.
  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

  const Manga._();

  List<String>? getGenres() {
    if (genre case final genre? when genre.isNotEmpty) {
      return genre
          .split(', ')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList();
    }
    return null;
  }

  SourceManga toSourceModel() {
    return SourceManga(
      url: url,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: genre,
      status: status,
      thumbnailUrl: thumbnailUrl,
      initialized: initialized,
      sourceId: sourceId,
    );
  }

  Manga copyFrom(SourceManga other) {
    return copyWith(
      author: other.author,
      artist: other.artist,
      description: other.description,
      genre: other.genre,
      thumbnailUrl: other.thumbnailUrl,
      status: other.status,
      updateStrategy: other.updateStrategy,
      initialized: other.initialized && initialized,
    );
  }

  bool isSameAs(SourceManga sourceManga) {
    return title == sourceManga.title &&
        url == sourceManga.url &&
        sourceId == sourceManga.sourceId;
  }
}
