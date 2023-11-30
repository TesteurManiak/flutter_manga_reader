import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/cover.dart';
import 'package:mangadex/src/models/generic_attributes.dart';
import 'package:mangadex/src/models/manga.dart';
import 'package:mangadex/src/models/scanlation_group.dart';
import 'package:mangadex/src/models/user.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'other',
  copyWith: false,
)
sealed class Relationship with _$Relationship {
  const factory Relationship.manga({
    required String id,
    MangaAttributes? attributes,
  }) = MangaRelationship;
  const factory Relationship.author({
    required String id,
    GenericAttributes? attributes,
  }) = AuthorRelationship;
  const factory Relationship.artist({
    required String id,
    GenericAttributes? attributes,
  }) = ArtistRelationship;
  const factory Relationship.coverArt({
    required String id,
    CoverArtAttributes? attributes,
  }) = CoverArtRelationship;
  const factory Relationship.scanlationGroup({
    required String id,
    ScanlationGroupAttributes? attributes,
  }) = ScanlationGroupRelationship;
  const factory Relationship.user({
    required String id,
    UserAttributes? attributes,
  }) = UserRelationship;
  const factory Relationship.other({
    required String id,
    Map<String, dynamic>? attributes,
  }) = OtherRelationship;

  factory Relationship.fromJson(Map<String, dynamic> json) =>
      _$RelationshipFromJson(json);
}
