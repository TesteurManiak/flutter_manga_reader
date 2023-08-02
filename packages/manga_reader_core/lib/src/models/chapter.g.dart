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
      dateUpload: json['dateUpload'] as int? ?? 0,
      chapterNumber: (json['chapterNumber'] as num?)?.toDouble() ?? 0.0,
      scanlator: json['scanlator'] as String?,
      read: json['read'] as bool? ?? false,
      bookmark: json['bookmark'] as bool? ?? false,
      lastPageRead: json['lastPageRead'] as int? ?? 0,
      dateFetch: json['dateFetch'] as int? ?? 0,
      lastModified: json['lastModified'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ChapterToJson(_$_Chapter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mangaId': instance.mangaId,
      'url': instance.url,
      'name': instance.name,
      'dateUpload': instance.dateUpload,
      'chapterNumber': instance.chapterNumber,
      'scanlator': instance.scanlator,
      'read': instance.read,
      'bookmark': instance.bookmark,
      'lastPageRead': instance.lastPageRead,
      'dateFetch': instance.dateFetch,
      'lastModified': instance.lastModified,
    };
