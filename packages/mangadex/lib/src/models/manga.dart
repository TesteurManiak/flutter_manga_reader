import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

typedef MangaList = PaginatedResponse<MangaData>;

@freezed
class MangaData with _$MangaData {
  const factory MangaData({required MangaAttributes attributes}) = _MangaData;

  factory MangaData.fromJson(Map<String, dynamic> json) =>
      _$MangaDataFromJson(json);
}

@freezed
class MangaAttributes with _$MangaAttributes {
  const factory MangaAttributes({
    required LocalizedString title,
    required List<LocalizedString> altTitles,
    required LocalizedString description,
    String? originalLanguage,
    String? lastVolume,
    String? lastChapter,
    ContentRating? contentRating,
    PublicationDemographic? publicationDemographic,
    Status? status,
    required List<Tag> tags,
  }) = _MangaAttributes;

  factory MangaAttributes.fromJson(Map<String, dynamic> json) =>
      _$MangaAttributesFromJson(json);
}

typedef LocalizedString = Map<String, String>;

enum ContentRating {
  @JsonValue('safe')
  safe,
  @JsonValue('suggestive')
  suggestive,
  @JsonValue('erotica')
  erotica,
  @JsonValue('pornographic')
  pornographic,
}

enum PublicationDemographic {
  @JsonValue('none')
  none,
  @JsonValue('shounen')
  shounen,
  @JsonValue('shoujo')
  shoujo,
  @JsonValue('josei')
  josei,
  @JsonValue('seinen')
  seinen,
}

enum Status {
  @JsonValue('ongoing')
  ongoing,
  @JsonValue('completed')
  completed,
  @JsonValue('hiatus')
  hiatus,
  @JsonValue('cancelled')
  cancelled,
}

@freezed
class Tag with _$Tag {
  const factory Tag({required TagAttributes attributes}) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class TagAttributes with _$TagAttributes {
  const factory TagAttributes({required String group}) = _TagAttributes;

  factory TagAttributes.fromJson(Map<String, dynamic> json) =>
      _$TagAttributesFromJson(json);
}

extension MangaDataExtensions on MangaData {
  Manga toModel() {
    return Manga(
      url: '',
      title: attributes.title.values.first,
    );
  }
}
