// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      author: json['author'] as String?,
      status: json['status'] == null
          ? MangaStatus.unknown
          : const MangaStatusConverter().fromJson(json['status'] as int),
      genre: json['genre'] as String?,
      favorite: json['favorite'] as bool? ?? false,
      source: json['source'] as String,
      lang: json['lang'] as String,
      artist: json['artist'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      initialized: json['initialized'] as bool? ?? false,
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'author': instance.author,
      'status': const MangaStatusConverter().toJson(instance.status),
      'genre': instance.genre,
      'favorite': instance.favorite,
      'source': instance.source,
      'lang': instance.lang,
      'artist': instance.artist,
      'thumbnailUrl': instance.thumbnailUrl,
      'initialized': instance.initialized,
    };
