// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoverListResponseImpl _$$CoverListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CoverListResponseImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CoverArt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CoverArt>[],
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$CoverListResponseImplToJson(
        _$CoverListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_$CoverArtImpl _$$CoverArtImplFromJson(Map<String, dynamic> json) =>
    _$CoverArtImpl(
      attributes: json['attributes'] == null
          ? null
          : CoverArtAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
              ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Relationship>[],
    );

Map<String, dynamic> _$$CoverArtImplToJson(_$CoverArtImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

_$CoverArtAttributesImpl _$$CoverArtAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$CoverArtAttributesImpl(
      fileName: json['fileName'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$CoverArtAttributesImplToJson(
        _$CoverArtAttributesImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'locale': instance.locale,
    };
