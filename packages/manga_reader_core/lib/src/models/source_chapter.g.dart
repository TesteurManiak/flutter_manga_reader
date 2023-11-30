// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceChapterImpl _$$SourceChapterImplFromJson(Map<String, dynamic> json) =>
    _$SourceChapterImpl(
      url: json['url'] as String,
      name: json['name'] as String,
      index: json['index'] as int,
      dateUpload: json['dateUpload'] == null
          ? null
          : DateTime.parse(json['dateUpload'] as String),
      chapterNumber: (json['chapterNumber'] as num?)?.toDouble() ?? -1.0,
      scanlator: json['scanlator'] as String?,
    );
