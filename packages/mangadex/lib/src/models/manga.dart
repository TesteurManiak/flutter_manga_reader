import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/relationship.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

@freezed
class MangaListResponse with _$MangaListResponse {
  const factory MangaListResponse({
    @Default(<MangaData>[]) List<MangaData> data,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _MangaListResponse;

  factory MangaListResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaListResponseFromJson(json);
}

@freezed
class MangaResponse with _$MangaResponse {
  const factory MangaResponse({
    required MangaData data,
  }) = _MangaResponse;

  factory MangaResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaResponseFromJson(json);
}

@freezed
class MangaData with _$MangaData {
  const factory MangaData({
    required String id,
    required MangaAttributes attributes,
    @Default(<Relationship>[])
    @RelationshipConverter()
    List<Relationship> relationships,
  }) = _MangaData;

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
  const factory Tag({
    @Default('') String id,
    required TagAttributes attributes,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class TagAttributes with _$TagAttributes {
  const factory TagAttributes({required String group}) = _TagAttributes;

  factory TagAttributes.fromJson(Map<String, dynamic> json) =>
      _$TagAttributesFromJson(json);
}
