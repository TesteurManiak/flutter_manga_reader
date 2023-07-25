// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_dex_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaDexResponse _$$_MangaDexResponseFromJson(Map<String, dynamic> json) =>
    _$_MangaDexResponse(
      result: json['result'] as String,
      response: json['response'] as String,
      mangas: json['data'] == null
          ? const <Manga>[]
          : const MangaDexToMangaConverter().fromJson(json['data'] as List),
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MangaDexResponseToJson(_$_MangaDexResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'response': instance.response,
      'data': const MangaDexToMangaConverter().toJson(instance.mangas),
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };
