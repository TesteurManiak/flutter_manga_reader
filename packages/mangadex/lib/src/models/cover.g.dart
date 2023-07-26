// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoverArt _$$_CoverArtFromJson(Map<String, dynamic> json) => _$_CoverArt(
      attributes: json['attributes'] == null
          ? null
          : CoverArtAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>)
          .map((e) => Relationship.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CoverArtToJson(_$_CoverArt instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

_$_CoverArtAttributes _$$_CoverArtAttributesFromJson(
        Map<String, dynamic> json) =>
    _$_CoverArtAttributes(
      fileName: json['fileName'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$_CoverArtAttributesToJson(
        _$_CoverArtAttributes instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'locale': instance.locale,
    };
