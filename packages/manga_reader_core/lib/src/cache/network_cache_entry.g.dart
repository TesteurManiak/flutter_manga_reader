// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_cache_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NetworkCacheEntry _$$_NetworkCacheEntryFromJson(Map<String, dynamic> json) =>
    _$_NetworkCacheEntry(
      key: json['key'] as String,
      value: json['value'] as String,
      expiry: DateTime.parse(json['expiry'] as String),
    );

Map<String, dynamic> _$$_NetworkCacheEntryToJson(
        _$_NetworkCacheEntry instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'expiry': instance.expiry.toIso8601String(),
    };
