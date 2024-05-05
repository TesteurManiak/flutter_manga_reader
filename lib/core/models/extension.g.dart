// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionImpl _$$ExtensionImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionImpl(
      name: json['name'] as String,
      pkg: json['pkg'] as String,
      apk: json['apk'] as String,
      lang: json['lang'] as String,
      code: (json['code'] as num).toInt(),
      version: json['version'] as String,
      nsfw: json['nsfw'] == null
          ? false
          : const IntToBoolConverter().fromJson((json['nsfw'] as num).toInt()),
      hasReadme: json['hasReadme'] == null
          ? false
          : const IntToBoolConverter()
              .fromJson((json['hasReadme'] as num).toInt()),
      hasChangelog: json['hasChangelog'] == null
          ? false
          : const IntToBoolConverter()
              .fromJson((json['hasChangelog'] as num).toInt()),
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ExtensionImplToJson(_$ExtensionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pkg': instance.pkg,
      'apk': instance.apk,
      'lang': instance.lang,
      'code': instance.code,
      'version': instance.version,
      'nsfw': const IntToBoolConverter().toJson(instance.nsfw),
      'hasReadme': const IntToBoolConverter().toJson(instance.hasReadme),
      'hasChangelog': const IntToBoolConverter().toJson(instance.hasChangelog),
      'sources': instance.sources,
    };

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      name: json['name'] as String,
      lang: json['lang'] as String,
      id: json['id'] as String,
      baseUrl: json['baseUrl'] as String,
      versionId: (json['versionId'] as num).toInt(),
      hasCloudflare: json['hasCloudflare'] == null
          ? false
          : const IntToBoolConverter()
              .fromJson((json['hasCloudflare'] as num).toInt()),
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lang': instance.lang,
      'id': instance.id,
      'baseUrl': instance.baseUrl,
      'versionId': instance.versionId,
      'hasCloudflare':
          const IntToBoolConverter().toJson(instance.hasCloudflare),
    };
