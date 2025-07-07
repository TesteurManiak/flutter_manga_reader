// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SourceManga _$SourceMangaFromJson(Map<String, dynamic> json) => _SourceManga(
  url: json['url'] as String,
  title: json['title'] as String,
  artist: json['artist'] as String?,
  author: json['author'] as String?,
  description: json['description'] as String?,
  genre: json['genre'] as String?,
  status:
      $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
      MangaStatus.unknown,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  initialized: json['initialized'] as bool? ?? false,
  updateStrategy:
      $enumDecodeNullable(_$UpdateStrategyEnumMap, json['updateStrategy']) ??
      UpdateStrategy.alwaysUpdate,
  sourceId: json['sourceId'] as String,
);

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
