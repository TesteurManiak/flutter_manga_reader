// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SourceChapter _$SourceChapterFromJson(Map<String, dynamic> json) =>
    _SourceChapter(
      url: json['url'] as String,
      name: json['name'] as String,
      dateUpload:
          json['dateUpload'] == null
              ? null
              : DateTime.parse(json['dateUpload'] as String),
      chapterNumber: (json['chapterNumber'] as num?)?.toDouble() ?? -1.0,
      scanlator: json['scanlator'] as String?,
    );
