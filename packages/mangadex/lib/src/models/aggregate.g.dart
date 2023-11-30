// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AggregateResponseImpl _$$AggregateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AggregateResponseImpl(
      result: json['result'] as String,
      volumes: (json['volumes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AggregateVolume.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$AggregateResponseImplToJson(
        _$AggregateResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'volumes': instance.volumes,
    };

_$AggregateVolumeImpl _$$AggregateVolumeImplFromJson(
        Map<String, dynamic> json) =>
    _$AggregateVolumeImpl(
      volume: json['volume'] as String,
      count: json['count'] as String,
      chapters: (json['chapters'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, AggregateChapter.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$AggregateVolumeImplToJson(
        _$AggregateVolumeImpl instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'count': instance.count,
      'chapters': instance.chapters,
    };

_$AggregateChapterImpl _$$AggregateChapterImplFromJson(
        Map<String, dynamic> json) =>
    _$AggregateChapterImpl(
      chapter: json['chapter'] as String,
      count: json['count'] as String,
    );

Map<String, dynamic> _$$AggregateChapterImplToJson(
        _$AggregateChapterImpl instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'count': instance.count,
    };
