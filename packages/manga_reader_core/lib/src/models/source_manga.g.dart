// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceMangaImpl _$$SourceMangaImplFromJson(Map<String, dynamic> json) =>
    _$SourceMangaImpl(
      title: json['title'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      author: json['author'] as String?,
      status: json['status'] == null
          ? MangaStatus.unknown
          : const MangaStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      genre: json['genre'] as String?,
      sourceId: json['sourceId'] as String,
      lang: json['lang'] as String,
      artist: json['artist'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );
