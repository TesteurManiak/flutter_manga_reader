import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/cover.dart';
import 'package:mangadex/src/models/generic_attributes.dart';
import 'package:mangadex/src/models/manga.dart';
import 'package:mangadex/src/models/scanlation_group.dart';
import 'package:mangadex/src/models/user.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@freezed
class Relationship with _$Relationship {
  const factory Relationship.manga({
    required String id,
    required String type,
    MangaAttributes? attributes,
  }) = MangaRelationship;
  const factory Relationship.author({
    required String id,
    required String type,
    GenericAttributes? attributes,
  }) = AuthorRelationship;
  const factory Relationship.artist({
    required String id,
    required String type,
    GenericAttributes? attributes,
  }) = ArtistRelationship;
  const factory Relationship.coverArt({
    required String id,
    required String type,
    CoverArtAttributes? attributes,
  }) = CoverArtRelationship;
  const factory Relationship.scanlationGroupRelationship({
    required String id,
    required String type,
    ScanlationGroupAttributes? attributes,
  }) = ScanlationGroupRelationship;
  const factory Relationship.user({
    required String id,
    required String type,
    UserAttributes? attributes,
  }) = UserRelationship;
  const factory Relationship.other({
    required String id,
    required String type,
    Map<String, dynamic>? attributes,
  }) = OtherRelationship;
}

class RelationshipConverter
    extends JsonConverter<Relationship, Map<String, dynamic>> {
  const RelationshipConverter();

  @override
  Relationship fromJson(Map<String, dynamic> json) {
    final rawRelationship = RawRelationship.fromJson(json);
    final attributes = rawRelationship.attributes;

    return switch (rawRelationship.type) {
      'manga' => Relationship.manga(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes:
              attributes != null ? MangaAttributes.fromJson(attributes) : null,
        ),
      'cover_art' => Relationship.coverArt(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes: attributes != null
              ? CoverArtAttributes.fromJson(attributes)
              : null,
        ),
      'author' => Relationship.author(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes: attributes != null
              ? GenericAttributes.fromJson(attributes)
              : null,
        ),
      'artist' => Relationship.artist(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes: attributes != null
              ? GenericAttributes.fromJson(attributes)
              : null,
        ),
      'scanlation_group' => Relationship.scanlationGroupRelationship(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes: attributes != null
              ? ScanlationGroupAttributes.fromJson(attributes)
              : null,
        ),
      'user' => Relationship.user(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes:
              attributes != null ? UserAttributes.fromJson(attributes) : null,
        ),
      _ => Relationship.other(
          id: rawRelationship.id,
          type: rawRelationship.type,
          attributes: rawRelationship.attributes,
        ),
    };
  }

  @override
  Map<String, dynamic> toJson(Relationship object) {
    return RawRelationship(
      id: object.id,
      type: object.type,
      attributes: object.map(
        manga: (rel) => rel.attributes?.toJson(),
        author: (rel) => rel.attributes?.toJson(),
        artist: (rel) => rel.attributes?.toJson(),
        coverArt: (rel) => rel.attributes?.toJson(),
        scanlationGroupRelationship: (rel) => rel.attributes?.toJson(),
        user: (rel) => rel.attributes?.toJson(),
        other: (rel) => rel.attributes,
      ),
    ).toJson();
  }
}

@freezed
class RawRelationship with _$RawRelationship {
  const factory RawRelationship({
    required String id,
    required String type,
    Map<String, dynamic>? attributes,
  }) = _RawRelationship;

  factory RawRelationship.fromJson(Map<String, dynamic> json) =>
      _$RawRelationshipFromJson(json);
}
