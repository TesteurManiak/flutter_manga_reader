// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterResponse _$$_ChapterResponseFromJson(Map<String, dynamic> json) =>
    _$_ChapterResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ChapterData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChapterData>[],
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ChapterResponseToJson(_$_ChapterResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_$_ChapterData _$$_ChapterDataFromJson(Map<String, dynamic> json) =>
    _$_ChapterData(
      id: json['id'] as String,
      attributes: ChapterAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
              ?.map((e) => const RelationshipConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Relationship>[],
    );

Map<String, dynamic> _$$_ChapterDataToJson(_$_ChapterData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships
          .map(const RelationshipConverter().toJson)
          .toList(),
    };

_$_ChapterAttributes _$$_ChapterAttributesFromJson(Map<String, dynamic> json) =>
    _$_ChapterAttributes(
      title: json['title'] as String?,
      volume: json['volume'] as String?,
      chapter: json['chapter'] as String?,
      pages: json['pages'] as int? ?? 0,
      publishAt: json['publishAt'] as String,
      externalUrl: json['externalUrl'] as String?,
    );

Map<String, dynamic> _$$_ChapterAttributesToJson(
        _$_ChapterAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'volume': instance.volume,
      'chapter': instance.chapter,
      'pages': instance.pages,
      'publishAt': instance.publishAt,
      'externalUrl': instance.externalUrl,
    };
