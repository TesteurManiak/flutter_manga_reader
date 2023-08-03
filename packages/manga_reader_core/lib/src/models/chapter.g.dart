// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chapter _$$_ChapterFromJson(Map<String, dynamic> json) => _$_Chapter(
      id: json['id'] as int,
      mangaId: json['mangaId'] as int,
      url: json['url'] as String,
      name: json['name'] as String,
      dateUpload: json['dateUpload'] == null
          ? null
          : DateTime.parse(json['dateUpload'] as String),
      chapterNumber: (json['chapterNumber'] as num?)?.toDouble() ?? 0.0,
      scanlator: json['scanlator'] as String?,
      read: json['read'] as bool? ?? false,
      bookmark: json['bookmark'] as bool? ?? false,
      lastPageRead: json['lastPageRead'] as int? ?? 0,
      dateFetch: json['dateFetch'] == null
          ? null
          : DateTime.parse(json['dateFetch'] as String),
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
    );

Map<String, dynamic> _$$_ChapterToJson(_$_Chapter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mangaId': instance.mangaId,
      'url': instance.url,
      'name': instance.name,
      'dateUpload': instance.dateUpload?.toIso8601String(),
      'chapterNumber': instance.chapterNumber,
      'scanlator': instance.scanlator,
      'read': instance.read,
      'bookmark': instance.bookmark,
      'lastPageRead': instance.lastPageRead,
      'dateFetch': instance.dateFetch?.toIso8601String(),
      'lastModified': instance.lastModified?.toIso8601String(),
    };
