// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChapterResponse _$ChapterResponseFromJson(Map<String, dynamic> json) =>
    _ChapterResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => ChapterData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChapterData>[],
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ChapterResponseToJson(_ChapterResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_ChapterData _$ChapterDataFromJson(Map<String, dynamic> json) => _ChapterData(
  id: json['id'] as String,
  attributes: ChapterAttributes.fromJson(
    json['attributes'] as Map<String, dynamic>,
  ),
  relationships:
      (json['relationships'] as List<dynamic>?)
          ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Relationship>[],
);

Map<String, dynamic> _$ChapterDataToJson(_ChapterData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

_ChapterAttributes _$ChapterAttributesFromJson(Map<String, dynamic> json) =>
    _ChapterAttributes(
      title: json['title'] as String?,
      volume: json['volume'] as String?,
      chapter: json['chapter'] as String?,
      pages: (json['pages'] as num?)?.toInt() ?? 0,
      publishAt: const DtConverter().fromJson(json['publishAt'] as String?),
      readableAt: const DtConverter().fromJson(json['readableAt'] as String?),
      createdAt: const DtConverter().fromJson(json['createdAt'] as String?),
      updatedAt: const DtConverter().fromJson(json['updatedAt'] as String?),
      externalUrl: json['externalUrl'] as String?,
    );

Map<String, dynamic> _$ChapterAttributesToJson(_ChapterAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'volume': instance.volume,
      'chapter': instance.chapter,
      'pages': instance.pages,
      'publishAt': const DtConverter().toJson(instance.publishAt),
      'readableAt': const DtConverter().toJson(instance.readableAt),
      'createdAt': const DtConverter().toJson(instance.createdAt),
      'updatedAt': const DtConverter().toJson(instance.updatedAt),
      'externalUrl': instance.externalUrl,
    };
