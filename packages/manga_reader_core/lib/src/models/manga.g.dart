// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      id: (json['id'] as num).toInt(),
      sourceId: json['sourceId'] as String,
      favorite: json['favorite'] as bool? ?? false,
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      nextUpdate: json['nextUpdate'] == null
          ? null
          : DateTime.parse(json['nextUpdate'] as String),
      fetchInterval: (json['fetchInterval'] as num?)?.toInt() ?? 0,
      dateAdded: json['dateAdded'] == null
          ? null
          : DateTime.parse(json['dateAdded'] as String),
      url: json['url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      artist: json['artist'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
          MangaStatus.unknown,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      updateStrategy: $enumDecodeNullable(
              _$UpdateStrategyEnumMap, json['updateStrategy']) ??
          UpdateStrategy.alwaysUpdate,
      initialized: json['initialized'] as bool? ?? false,
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceId': instance.sourceId,
      'favorite': instance.favorite,
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      'nextUpdate': instance.nextUpdate?.toIso8601String(),
      'fetchInterval': instance.fetchInterval,
      'dateAdded': instance.dateAdded?.toIso8601String(),
      'url': instance.url,
      'title': instance.title,
      'artist': instance.artist,
      'author': instance.author,
      'description': instance.description,
      'genres': instance.genres,
      'status': _$MangaStatusEnumMap[instance.status]!,
      'thumbnailUrl': instance.thumbnailUrl,
      'updateStrategy': _$UpdateStrategyEnumMap[instance.updateStrategy]!,
      'initialized': instance.initialized,
      'lastModifiedAt': instance.lastModifiedAt?.toIso8601String(),
    };

const _$MangaStatusEnumMap = {
  MangaStatus.unknown: 0,
  MangaStatus.ongoing: 1,
  MangaStatus.completed: 2,
  MangaStatus.licensed: 3,
  MangaStatus.publishingFinished: 4,
  MangaStatus.cancelled: 5,
  MangaStatus.onHiatus: 6,
};

const _$UpdateStrategyEnumMap = {
  UpdateStrategy.alwaysUpdate: 0,
  UpdateStrategy.onlyFetchOnce: 1,
};
