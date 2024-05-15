// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceMangaImpl _$$SourceMangaImplFromJson(Map<String, dynamic> json) =>
    _$SourceMangaImpl(
      url: json['url'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      genre: json['genre'] as String?,
      status: $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
          MangaStatus.unknown,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      initialized: json['initialized'] as bool? ?? false,
      updateStrategy: $enumDecodeNullable(
              _$UpdateStrategyEnumMap, json['updateStrategy']) ??
          UpdateStrategy.alwaysUpdate,
      sourceId: json['sourceId'] as String,
    );

const _$MangaStatusEnumMap = {
  MangaStatus.unknown: 'unknown',
  MangaStatus.ongoing: 'ongoing',
  MangaStatus.completed: 'completed',
  MangaStatus.licensed: 'licensed',
  MangaStatus.publishingFinished: 'publishingFinished',
  MangaStatus.cancelled: 'cancelled',
  MangaStatus.onHiatus: 'onHiatus',
};

const _$UpdateStrategyEnumMap = {
  UpdateStrategy.alwaysUpdate: 'alwaysUpdate',
  UpdateStrategy.onlyFetchOnce: 'onlyFetchOnce',
};
