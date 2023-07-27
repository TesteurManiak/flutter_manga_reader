import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/relationship.dart';

part 'cover.freezed.dart';
part 'cover.g.dart';

@freezed
class CoverListResponse with _$CoverListResponse {
  const factory CoverListResponse({
    @Default(<CoverArt>[]) List<CoverArt> data,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _CoverListResponse;

  factory CoverListResponse.fromJson(Map<String, dynamic> json) =>
      _$CoverListResponseFromJson(json);
}

@freezed
class CoverArt with _$CoverArt {
  const factory CoverArt({
    CoverArtAttributes? attributes,
    @Default(<Relationship>[])
    @RelationshipConverter()
    List<Relationship> relationships,
  }) = _CoverArt;

  factory CoverArt.fromJson(Map<String, dynamic> json) =>
      _$CoverArtFromJson(json);
}

@freezed
class CoverArtAttributes with _$CoverArtAttributes {
  const factory CoverArtAttributes({
    String? fileName,
    String? locale,
  }) = _CoverArtAttributes;

  factory CoverArtAttributes.fromJson(Map<String, dynamic> json) =>
      _$CoverArtAttributesFromJson(json);
}
