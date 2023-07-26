import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/relationship.dart';

part 'cover.freezed.dart';
part 'cover.g.dart';

@freezed
class CoverArt with _$CoverArt {
  const factory CoverArt({
    CoverArtAttributes? attributes,
    required List<Relationship> relationships,
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
