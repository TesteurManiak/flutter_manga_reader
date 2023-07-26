// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoverListResponse _$$_CoverListResponseFromJson(Map<String, dynamic> json) =>
    _$_CoverListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CoverArt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CoverArt>[],
      limit: json['limit'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CoverListResponseToJson(
        _$_CoverListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };
