// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MangaListResponse _$MangaListResponseFromJson(Map<String, dynamic> json) =>
    _MangaListResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => MangaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MangaData>[],
      limit: (json['limit'] as num?)?.toInt() ?? 0,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MangaListResponseToJson(_MangaListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_MangaResponse _$MangaResponseFromJson(Map<String, dynamic> json) =>
    _MangaResponse(
      data: MangaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaResponseToJson(_MangaResponse instance) =>
    <String, dynamic>{'data': instance.data};

_MangaData _$MangaDataFromJson(Map<String, dynamic> json) => _MangaData(
  id: json['id'] as String,
  attributes: MangaAttributes.fromJson(
    json['attributes'] as Map<String, dynamic>,
  ),
  relationships:
      (json['relationships'] as List<dynamic>?)
          ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Relationship>[],
);

Map<String, dynamic> _$MangaDataToJson(_MangaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

_MangaAttributes _$MangaAttributesFromJson(Map<String, dynamic> json) =>
    _MangaAttributes(
      title: Map<String, String>.from(json['title'] as Map),
      altTitles:
          (json['altTitles'] as List<dynamic>)
              .map((e) => Map<String, String>.from(e as Map))
              .toList(),
      description: Map<String, String>.from(json['description'] as Map),
      originalLanguage: json['originalLanguage'] as String?,
      lastVolume: json['lastVolume'] as String?,
      lastChapter: json['lastChapter'] as String?,
      contentRating: $enumDecodeNullable(
        _$ContentRatingEnumMap,
        json['contentRating'],
      ),
      publicationDemographic: $enumDecodeNullable(
        _$PublicationDemographicEnumMap,
        json['publicationDemographic'],
      ),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      tags:
          (json['tags'] as List<dynamic>)
              .map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$MangaAttributesToJson(_MangaAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'altTitles': instance.altTitles,
      'description': instance.description,
      'originalLanguage': instance.originalLanguage,
      'lastVolume': instance.lastVolume,
      'lastChapter': instance.lastChapter,
      'contentRating': _$ContentRatingEnumMap[instance.contentRating],
      'publicationDemographic':
          _$PublicationDemographicEnumMap[instance.publicationDemographic],
      'status': _$StatusEnumMap[instance.status],
      'tags': instance.tags,
    };

const _$ContentRatingEnumMap = {
  ContentRating.safe: 'safe',
  ContentRating.suggestive: 'suggestive',
  ContentRating.erotica: 'erotica',
  ContentRating.pornographic: 'pornographic',
};

const _$PublicationDemographicEnumMap = {
  PublicationDemographic.none: 'none',
  PublicationDemographic.shounen: 'shounen',
  PublicationDemographic.shoujo: 'shoujo',
  PublicationDemographic.josei: 'josei',
  PublicationDemographic.seinen: 'seinen',
};

const _$StatusEnumMap = {
  Status.ongoing: 'ongoing',
  Status.completed: 'completed',
  Status.hiatus: 'hiatus',
  Status.cancelled: 'cancelled',
};

_Tag _$TagFromJson(Map<String, dynamic> json) => _Tag(
  id: json['id'] as String? ?? '',
  attributes: TagAttributes.fromJson(
    json['attributes'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TagToJson(_Tag instance) => <String, dynamic>{
  'id': instance.id,
  'attributes': instance.attributes,
};

_TagAttributes _$TagAttributesFromJson(Map<String, dynamic> json) =>
    _TagAttributes(
      name: Map<String, String>.from(json['name'] as Map),
      group: json['group'] as String,
    );

Map<String, dynamic> _$TagAttributesToJson(_TagAttributes instance) =>
    <String, dynamic>{'name': instance.name, 'group': instance.group};
