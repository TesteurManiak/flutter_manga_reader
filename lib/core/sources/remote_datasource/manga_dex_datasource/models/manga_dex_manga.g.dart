// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_dex_manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaDexManga _$$_MangaDexMangaFromJson(Map<String, dynamic> json) =>
    _$_MangaDexManga(
      id: json['id'] as String,
      type: $enumDecodeNullable(_$MangaTypeEnumMap, json['type']) ??
          MangaType.manga,
      attributes:
          MangaAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MangaDexMangaToJson(_$_MangaDexManga instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MangaTypeEnumMap[instance.type]!,
      'attributes': instance.attributes,
    };

const _$MangaTypeEnumMap = {
  MangaType.manga: 'manga',
};

_$_MangaAttributes _$$_MangaAttributesFromJson(Map<String, dynamic> json) =>
    _$_MangaAttributes(
      title: Map<String, String>.from(json['title'] as Map),
      altTitles: (json['altTitles'] as List<dynamic>?)
              ?.map((e) => Map<String, String>.from(e as Map))
              .toList() ??
          const <LocalizedString>[],
      description: Map<String, String>.from(json['description'] as Map),
      isLocked: json['isLocked'] as bool,
      links: Map<String, String>.from(json['links'] as Map),
      originalLanguage: json['originalLanguage'] as String,
      lastVolume: json['lastVolume'] as String?,
      lastChapter: json['lastChapter'] as String?,
      publicationDemographic: $enumDecodeNullable(
          _$MangaDexPublicationDemographicEnumMap,
          json['publicationDemographic']),
      status: $enumDecode(_$MangaDexStatusEnumMap, json['status']),
      year: json['year'] as int?,
    );

Map<String, dynamic> _$$_MangaAttributesToJson(_$_MangaAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'altTitles': instance.altTitles,
      'description': instance.description,
      'isLocked': instance.isLocked,
      'links': instance.links,
      'originalLanguage': instance.originalLanguage,
      'lastVolume': instance.lastVolume,
      'lastChapter': instance.lastChapter,
      'publicationDemographic': _$MangaDexPublicationDemographicEnumMap[
          instance.publicationDemographic],
      'status': _$MangaDexStatusEnumMap[instance.status]!,
      'year': instance.year,
    };

const _$MangaDexPublicationDemographicEnumMap = {
  MangaDexPublicationDemographic.shounen: 'shounen',
  MangaDexPublicationDemographic.shoujo: 'shoujo',
  MangaDexPublicationDemographic.josei: 'josei',
  MangaDexPublicationDemographic.seinen: 'seinen',
};

const _$MangaDexStatusEnumMap = {
  MangaDexStatus.completed: 'completed',
  MangaDexStatus.ongoing: 'ongoing',
  MangaDexStatus.cancelled: 'cancelled',
  MangaDexStatus.hiatus: 'hiatus',
};
