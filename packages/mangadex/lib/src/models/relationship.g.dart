// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaRelationshipImpl _$$MangaRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] == null
          ? null
          : MangaAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MangaRelationshipImplToJson(
        _$MangaRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$AuthorRelationshipImpl _$$AuthorRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthorRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] == null
          ? null
          : GenericAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AuthorRelationshipImplToJson(
        _$AuthorRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$ArtistRelationshipImpl _$$ArtistRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] == null
          ? null
          : GenericAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ArtistRelationshipImplToJson(
        _$ArtistRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$CoverArtRelationshipImpl _$$CoverArtRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$CoverArtRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] == null
          ? null
          : CoverArtAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CoverArtRelationshipImplToJson(
        _$CoverArtRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$ScanlationGroupRelationshipImpl _$$ScanlationGroupRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$ScanlationGroupRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] == null
          ? null
          : ScanlationGroupAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ScanlationGroupRelationshipImplToJson(
        _$ScanlationGroupRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$UserRelationshipImpl _$$UserRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] == null
          ? null
          : UserAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserRelationshipImplToJson(
        _$UserRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };

_$OtherRelationshipImpl _$$OtherRelationshipImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherRelationshipImpl(
      id: json['id'] as String,
      attributes: json['attributes'] as Map<String, dynamic>?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OtherRelationshipImplToJson(
        _$OtherRelationshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'type': instance.$type,
    };
