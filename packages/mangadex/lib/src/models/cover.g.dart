// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoverListResponse _$CoverListResponseFromJson(Map<String, dynamic> json) =>
    _CoverListResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CoverArt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CoverArt>[],
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CoverListResponseToJson(_CoverListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_CoverArt _$CoverArtFromJson(Map<String, dynamic> json) => _CoverArt(
  attributes:
      json['attributes'] == null
          ? null
          : CoverArtAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>,
          ),
  relationships:
      (json['relationships'] as List<dynamic>?)
          ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Relationship>[],
);

Map<String, dynamic> _$CoverArtToJson(_CoverArt instance) => <String, dynamic>{
  'attributes': instance.attributes,
  'relationships': instance.relationships,
};

_CoverArtAttributes _$CoverArtAttributesFromJson(Map<String, dynamic> json) =>
    _CoverArtAttributes(
      fileName: json['fileName'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$CoverArtAttributesToJson(_CoverArtAttributes instance) =>
    <String, dynamic>{'fileName': instance.fileName, 'locale': instance.locale};
