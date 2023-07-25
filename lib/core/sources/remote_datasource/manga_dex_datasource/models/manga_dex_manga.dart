import 'package:collection/collection.dart';
import 'package:flutter_manga_reader/core/models/manga.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_dex_manga.freezed.dart';
part 'manga_dex_manga.g.dart';

@freezed
class MangaDexManga with _$MangaDexManga {
  const factory MangaDexManga({
    required String id,
    @Default(MangaType.manga) MangaType type,
    required MangaAttributes attributes,
  }) = _MangaDexManga;

  factory MangaDexManga.fromJson(Map<String, dynamic> json) =>
      _$MangaDexMangaFromJson(json);

  const MangaDexManga._();

  Manga toManga() {
    final title = attributes.title;

    return Manga(
      url: attributes.links.firstValidLink(),
      title: title.getValueOfLocale('en') ?? title.entries.first.value,
      description: attributes.description.getValueOfLocale('en'),
    );
  }
}

enum MangaType {
  @JsonValue('manga')
  manga,
}

@freezed
class MangaAttributes with _$MangaAttributes {
  const factory MangaAttributes({
    required LocalizedString title,
    @Default(<LocalizedString>[]) List<LocalizedString> altTitles,
    required LocalizedString description,
    required bool isLocked,
    required Map<String, String> links,
    required String originalLanguage,
    String? lastVolume,
    String? lastChapter,
    MangaDexPublicationDemographic? publicationDemographic,
    required MangaDexStatus status,

    /// Year of release
    int? year,
  }) = _MangaAttributes;

  factory MangaAttributes.fromJson(Map<String, dynamic> json) =>
      _$MangaAttributesFromJson(json);
}

enum MangaDexPublicationDemographic {
  @JsonValue('shounen')
  shounen,
  @JsonValue('shoujo')
  shoujo,
  @JsonValue('josei')
  josei,
  @JsonValue('seinen')
  seinen,
}

enum MangaDexStatus {
  @JsonValue('completed')
  completed,
  @JsonValue('ongoing')
  ongoing,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('hiatus')
  hiatus,
}

typedef LocalizedString = Map<String, String>;

class MangaDexToMangaConverter
    extends JsonConverter<List<Manga>, List<MangaDexManga>> {
  const MangaDexToMangaConverter();

  @override
  List<Manga> fromJson(List<MangaDexManga> json) {
    return json.map((e) => e.toManga()).toList();
  }

  @override
  List<MangaDexManga> toJson(List<Manga> object) {
    throw UnimplementedError();
  }
}

extension on LocalizedString {
  String? getValueOfLocale(String locale) {
    return this[locale] ??
        entries.firstWhereOrNull((e) => e.key.contains(locale))?.value;
  }
}

extension on Map<String, String> {
  String firstValidLink() {
    return values.firstWhere(
      (e) => Uri.tryParse(e) != null,
      orElse: () => values.first,
    );
  }
}
