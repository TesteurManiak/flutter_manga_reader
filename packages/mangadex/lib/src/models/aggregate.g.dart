// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AggregateResponse _$$_AggregateResponseFromJson(Map<String, dynamic> json) =>
    _$_AggregateResponse(
      result: json['result'] as String,
      volumes: (json['volumes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AggregateVolume.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_AggregateResponseToJson(
        _$_AggregateResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'volumes': instance.volumes,
    };

_$_AggregateVolume _$$_AggregateVolumeFromJson(Map<String, dynamic> json) =>
    _$_AggregateVolume(
      volume: json['volume'] as String,
      count: json['count'] as String,
      chapters: (json['chapters'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, AggregateChapter.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_AggregateVolumeToJson(_$_AggregateVolume instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'count': instance.count,
      'chapters': instance.chapters,
    };

_$_AggregateChapter _$$_AggregateChapterFromJson(Map<String, dynamic> json) =>
    _$_AggregateChapter(
      chapter: json['chapter'] as String,
      count: json['count'] as String,
    );

Map<String, dynamic> _$$_AggregateChapterToJson(_$_AggregateChapter instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'count': instance.count,
    };
