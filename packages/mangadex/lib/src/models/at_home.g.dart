// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'at_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AtHome _$$_AtHomeFromJson(Map<String, dynamic> json) => _$_AtHome(
      baseUrl: json['baseUrl'] as String,
      chapter: AtHomeChapter.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AtHomeToJson(_$_AtHome instance) => <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'chapter': instance.chapter,
    };

_$_AtHomeChapter _$$_AtHomeChapterFromJson(Map<String, dynamic> json) =>
    _$_AtHomeChapter(
      hash: json['hash'] as String,
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
      dataSaver:
          (json['dataSaver'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AtHomeChapterToJson(_$_AtHomeChapter instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'data': instance.data,
      'dataSaver': instance.dataSaver,
    };
