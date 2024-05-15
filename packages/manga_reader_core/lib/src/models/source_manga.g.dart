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
      status: json['status'] == null
          ? MangaStatus.unknown
          : const MangaStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      thumbnailUrl: json['thumbnailUrl'] as String?,
      initialized: json['initialized'] as bool? ?? false,
      updateStrategy: $enumDecodeNullable(
              _$UpdateStrategyEnumMap, json['updateStrategy']) ??
          UpdateStrategy.alwaysUpdate,
      sourceId: json['sourceId'] as String,
    );

const _$UpdateStrategyEnumMap = {
  UpdateStrategy.alwaysUpdate: 'alwaysUpdate',
  UpdateStrategy.onlyFetchOnce: 'onlyFetchOnce',
};
