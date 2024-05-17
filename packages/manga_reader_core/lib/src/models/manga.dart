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
    required String sourceId,
    @Default(false) bool favorite,
    @Default(0) int fetchInterval,
    DateTime? dateAdded,
    @Default('') String url,
    @Default('') String title,
    String? artist,
    String? author,
    String? description,
    List<String>? genres,
    @Default(MangaStatus.unknown) MangaStatus status,
    String? thumbnailUrl,
    @Default(UpdateStrategy.alwaysUpdate) UpdateStrategy updateStrategy,
    @Default(false) bool initialized,
    DateTime? lastModifiedAt,
  }) = _Manga;

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

  const Manga._();

  String? getGenre() {
    final genre = genres?.join(',');
    return genre?.isEmpty ?? true ? null : genre;
  }

  SourceManga toSourceManga() {
    return SourceManga(
      url: url,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: getGenre(),
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
      genres: other.getGenres(),
      thumbnailUrl: other.thumbnailUrl,
      status: other.status,
      updateStrategy: other.updateStrategy,
      initialized: other.initialized && initialized,
    );
  }
}
