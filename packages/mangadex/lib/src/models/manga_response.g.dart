// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaListResponse _$$_MangaListResponseFromJson(Map<String, dynamic> json) =>
    _$_MangaListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MangaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MangaData>[],
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MangaListResponseToJson(
        _$_MangaListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

_$_MangaResponse _$$_MangaResponseFromJson(Map<String, dynamic> json) =>
    _$_MangaResponse(
      data: MangaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MangaResponseToJson(_$_MangaResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
