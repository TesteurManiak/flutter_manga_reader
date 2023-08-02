import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/manga.dart';
import 'package:manga_reader_core/src/models/manga_status.dart';

part 'source_manga.freezed.dart';
part 'source_manga.g.dart';

/// Model used to handle manga data fetched from a remote datasource.
///
/// It doesn't have an id because it's not stored in the database.
@Freezed(toJson: false)
class SourceManga with _$SourceManga {
  const factory SourceManga({
    required String title,
    required String url,
    String? description,
    String? author,
    @Default(MangaStatus.unknown) @MangaStatusConverter() MangaStatus status,
    String? genre,
    String? source,
    String? lang,
    String? artist,
    String? thumbnailUrl,
  }) = _SourceManga;

  factory SourceManga.fromJson(Map<String, dynamic> json) =>
      _$SourceMangaFromJson(json);

  factory SourceManga.fromModel(Manga manga) {
    return SourceManga.fromJson(manga.toJson());
  }
}
