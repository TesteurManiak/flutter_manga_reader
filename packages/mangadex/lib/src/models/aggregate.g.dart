// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AggregateResponse _$AggregateResponseFromJson(Map<String, dynamic> json) =>
    _AggregateResponse(
      result: json['result'] as String,
      volumes: (json['volumes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AggregateVolume.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AggregateResponseToJson(_AggregateResponse instance) =>
    <String, dynamic>{'result': instance.result, 'volumes': instance.volumes};

_AggregateVolume _$AggregateVolumeFromJson(Map<String, dynamic> json) =>
    _AggregateVolume(
      volume: json['volume'] as String,
      count: json['count'] as String,
      chapters: (json['chapters'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, AggregateChapter.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AggregateVolumeToJson(_AggregateVolume instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'count': instance.count,
      'chapters': instance.chapters,
    };

_AggregateChapter _$AggregateChapterFromJson(Map<String, dynamic> json) =>
    _AggregateChapter(
      chapter: json['chapter'] as String,
      count: json['count'] as String,
    );

Map<String, dynamic> _$AggregateChapterToJson(_AggregateChapter instance) =>
    <String, dynamic>{'chapter': instance.chapter, 'count': instance.count};
