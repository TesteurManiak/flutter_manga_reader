// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaRelationship _$MangaRelationshipFromJson(Map<String, dynamic> json) =>
    MangaRelationship(
      id: json['id'] as String,
      attributes:
          json['attributes'] == null
              ? null
              : MangaAttributes.fromJson(
                json['attributes'] as Map<String, dynamic>,
              ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MangaRelationshipToJson(MangaRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

AuthorRelationship _$AuthorRelationshipFromJson(Map<String, dynamic> json) =>
    AuthorRelationship(
      id: json['id'] as String,
      attributes:
          json['attributes'] == null
              ? null
              : GenericAttributes.fromJson(
                json['attributes'] as Map<String, dynamic>,
              ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$AuthorRelationshipToJson(AuthorRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

ArtistRelationship _$ArtistRelationshipFromJson(Map<String, dynamic> json) =>
    ArtistRelationship(
      id: json['id'] as String,
      attributes:
          json['attributes'] == null
              ? null
              : GenericAttributes.fromJson(
                json['attributes'] as Map<String, dynamic>,
              ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ArtistRelationshipToJson(ArtistRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

CoverArtRelationship _$CoverArtRelationshipFromJson(
  Map<String, dynamic> json,
) => CoverArtRelationship(
  id: json['id'] as String,
  attributes:
      json['attributes'] == null
          ? null
          : CoverArtAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>,
          ),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$CoverArtRelationshipToJson(
  CoverArtRelationship instance,
) => <String, dynamic>{
  'id': instance.id,
  'attributes': instance.attributes,
  'type': instance.$type,
};

ScanlationGroupRelationship _$ScanlationGroupRelationshipFromJson(
  Map<String, dynamic> json,
) => ScanlationGroupRelationship(
  id: json['id'] as String,
  attributes:
      json['attributes'] == null
          ? null
          : ScanlationGroupAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>,
          ),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$ScanlationGroupRelationshipToJson(
  ScanlationGroupRelationship instance,
) => <String, dynamic>{
  'id': instance.id,
  'attributes': instance.attributes,
  'type': instance.$type,
};

UserRelationship _$UserRelationshipFromJson(Map<String, dynamic> json) =>
    UserRelationship(
      id: json['id'] as String,
      attributes:
          json['attributes'] == null
              ? null
              : UserAttributes.fromJson(
                json['attributes'] as Map<String, dynamic>,
              ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$UserRelationshipToJson(UserRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

OtherRelationship _$OtherRelationshipFromJson(Map<String, dynamic> json) =>
    OtherRelationship(
      id: json['id'] as String,
      attributes: json['attributes'] as Map<String, dynamic>?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OtherRelationshipToJson(OtherRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };
