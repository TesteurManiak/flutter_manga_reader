// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      id: (json['id'] as num).toInt(),
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
      favorite: json['favorite'] as bool? ?? false,
      sourceId: json['sourceId'] as String,
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'artist': instance.artist,
      'author': instance.author,
      'description': instance.description,
      'genre': instance.genre,
      'status': const MangaStatusConverter().toJson(instance.status),
      'thumbnailUrl': instance.thumbnailUrl,
      'initialized': instance.initialized,
      'updateStrategy': _$UpdateStrategyEnumMap[instance.updateStrategy]!,
      'favorite': instance.favorite,
      'sourceId': instance.sourceId,
    };

const _$UpdateStrategyEnumMap = {
  UpdateStrategy.alwaysUpdate: 'alwaysUpdate',
  UpdateStrategy.onlyFetchOnce: 'onlyFetchOnce',
};
