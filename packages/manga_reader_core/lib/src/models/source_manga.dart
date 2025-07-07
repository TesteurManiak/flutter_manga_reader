import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/manga.dart';
import 'package:manga_reader_core/src/models/manga_status.dart';
import 'package:manga_reader_core/src/models/update_strategy.dart';

part 'source_manga.freezed.dart';
part 'source_manga.g.dart';

/// Model used to handle manga data fetched from a remote datasource.
///
/// It doesn't have an id because it's not stored in the database.
@Freezed(toJson: false)
abstract class SourceManga with _$SourceManga {
  const factory SourceManga({
    required String url,
    required String title,
    String? artist,
    String? author,
    String? description,
    String? genre,
    @Default(MangaStatus.unknown) MangaStatus status,
    String? thumbnailUrl,
    @Default(false) bool initialized,
    @Default(UpdateStrategy.alwaysUpdate) UpdateStrategy updateStrategy,
    required String sourceId,
  }) = _SourceManga;

  factory SourceManga.fromJson(Map<String, dynamic> json) =>
      _$SourceMangaFromJson(json);

  const SourceManga._();

  Manga toDomainManga(int id) {
    return Manga(
      id: id,
      url: url,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genres: getGenres(),
      status: status,
      thumbnailUrl: thumbnailUrl,
      sourceId: sourceId,
    );
  }

  List<String>? getGenres() {
    if (genre?.trim() case final genre? when genre.isNotEmpty) {
      return genre
          .split(',')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList();
    }
    return null;
  }
}
