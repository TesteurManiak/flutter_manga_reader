// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AtHomeImpl _$$AtHomeImplFromJson(Map<String, dynamic> json) => _$AtHomeImpl(
      baseUrl: json['baseUrl'] as String,
      chapter: AtHomeChapter.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AtHomeImplToJson(_$AtHomeImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'chapter': instance.chapter,
    };

_$AtHomeChapterImpl _$$AtHomeChapterImplFromJson(Map<String, dynamic> json) =>
    _$AtHomeChapterImpl(
      hash: json['hash'] as String,
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
      dataSaver:
          (json['dataSaver'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AtHomeChapterImplToJson(_$AtHomeChapterImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'data': instance.data,
      'dataSaver': instance.dataSaver,
    };
