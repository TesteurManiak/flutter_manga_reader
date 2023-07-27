// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterData _$$_ChapterDataFromJson(Map<String, dynamic> json) =>
    _$_ChapterData(
      id: json['id'] as String,
      attributes: ChapterAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
              ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Relationship>[],
    );

Map<String, dynamic> _$$_ChapterDataToJson(_$_ChapterData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
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