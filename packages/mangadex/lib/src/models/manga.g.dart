// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaData _$$_MangaDataFromJson(Map<String, dynamic> json) => _$_MangaData(
      id: json['id'] as String,
      attributes:
          MangaAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
              ?.map((e) => Relationship.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Relationship>[],
    );

Map<String, dynamic> _$$_MangaDataToJson(_$_MangaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

_$_MangaAttributes _$$_MangaAttributesFromJson(Map<String, dynamic> json) =>
    _$_MangaAttributes(
      title: Map<String, String>.from(json['title'] as Map),
      altTitles: (json['altTitles'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      description: Map<String, String>.from(json['description'] as Map),
      originalLanguage: json['originalLanguage'] as String?,
      lastVolume: json['lastVolume'] as String?,
      lastChapter: json['lastChapter'] as String?,
      contentRating:
          $enumDecodeNullable(_$ContentRatingEnumMap, json['contentRating']),
      publicationDemographic: $enumDecodeNullable(
          _$PublicationDemographicEnumMap, json['publicationDemographic']),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MangaAttributesToJson(_$_MangaAttributes instance) =>
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

_$_Tag _$$_TagFromJson(Map<String, dynamic> json) => _$_Tag(
      attributes:
          TagAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'attributes': instance.attributes,
    };

_$_TagAttributes _$$_TagAttributesFromJson(Map<String, dynamic> json) =>
    _$_TagAttributes(
      group: json['group'] as String,
    );

Map<String, dynamic> _$$_TagAttributesToJson(_$_TagAttributes instance) =>
    <String, dynamic>{
      'group': instance.group,
    };
