// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoverListResponse _$$_CoverListResponseFromJson(Map<String, dynamic> json) =>
    _$_CoverListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CoverArt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CoverArt>[],
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CoverListResponseToJson(
        _$_CoverListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_$_CoverArt _$$_CoverArtFromJson(Map<String, dynamic> json) => _$_CoverArt(
      attributes: json['attributes'] == null
          ? null
          : CoverArtAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
              ?.map((e) => const RelationshipConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Relationship>[],
    );

Map<String, dynamic> _$$_CoverArtToJson(_$_CoverArt instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'relationships': instance.relationships
          .map(const RelationshipConverter().toJson)
          .toList(),
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
