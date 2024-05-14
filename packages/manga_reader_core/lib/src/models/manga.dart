import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/manga_status.dart';
import 'package:manga_reader_core/src/models/source_manga.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

/// Model used to handle manga data fetched from the database.
@freezed
class Manga with _$Manga {
  const factory Manga({
    required int id,
    required String title,
    required String url,
    String? description,
    String? author,
    @Default(MangaStatus.unknown) @MangaStatusConverter() MangaStatus status,
    String? genre,
    @Default(false) bool favorite,
    required String source,
    required String lang,
    String? artist,
    String? thumbnailUrl,
    @Default(false) bool initialized,
  }) = _Manga;

  /// Used to create model from the database entity.
  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

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

  SourceManga toSourceModel() => SourceManga.fromJson(toJson());

  String get sourceId => toSourceModel().sourceId;

  bool isSameAs(SourceManga sourceManga) {
    return title == sourceManga.title &&
        url == sourceManga.url &&
        lang == sourceManga.lang &&
        source == sourceManga.source;
  }
}
