// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_cache_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetworkCacheEntry _$NetworkCacheEntryFromJson(Map<String, dynamic> json) {
  return _NetworkCacheEntry.fromJson(json);
}

/// @nodoc
mixin _$NetworkCacheEntry {
  String get key => throw _privateConstructorUsedError;

  /// Encoded JSON string of the response.
  String get value => throw _privateConstructorUsedError;

  /// Expiry date of the cache entry.
  DateTime get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkCacheEntryCopyWith<NetworkCacheEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkCacheEntryCopyWith<$Res> {
  factory $NetworkCacheEntryCopyWith(
          NetworkCacheEntry value, $Res Function(NetworkCacheEntry) then) =
      _$NetworkCacheEntryCopyWithImpl<$Res, NetworkCacheEntry>;
  @useResult
  $Res call({String key, String value, DateTime expiry});
}

/// @nodoc
class _$NetworkCacheEntryCopyWithImpl<$Res, $Val extends NetworkCacheEntry>
    implements $NetworkCacheEntryCopyWith<$Res> {
  _$NetworkCacheEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? expiry = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkCacheEntryCopyWith<$Res>
    implements $NetworkCacheEntryCopyWith<$Res> {
  factory _$$_NetworkCacheEntryCopyWith(_$_NetworkCacheEntry value,
          $Res Function(_$_NetworkCacheEntry) then) =
      __$$_NetworkCacheEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value, DateTime expiry});
}

/// @nodoc
class __$$_NetworkCacheEntryCopyWithImpl<$Res>
    extends _$NetworkCacheEntryCopyWithImpl<$Res, _$_NetworkCacheEntry>
    implements _$$_NetworkCacheEntryCopyWith<$Res> {
  __$$_NetworkCacheEntryCopyWithImpl(
      _$_NetworkCacheEntry _value, $Res Function(_$_NetworkCacheEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? expiry = null,
  }) {
    return _then(_$_NetworkCacheEntry(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NetworkCacheEntry extends _NetworkCacheEntry {
  const _$_NetworkCacheEntry(
      {required this.key, required this.value, required this.expiry})
      : super._();

  factory _$_NetworkCacheEntry.fromJson(Map<String, dynamic> json) =>
      _$$_NetworkCacheEntryFromJson(json);

  @override
  final String key;

  /// Encoded JSON string of the response.
  @override
  final String value;

  /// Expiry date of the cache entry.
  @override
  final DateTime expiry;

  @override
  String toString() {
    return 'NetworkCacheEntry(key: $key, value: $value, expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkCacheEntry &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkCacheEntryCopyWith<_$_NetworkCacheEntry> get copyWith =>
      __$$_NetworkCacheEntryCopyWithImpl<_$_NetworkCacheEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworkCacheEntryToJson(
      this,
    );
  }
}

abstract class _NetworkCacheEntry extends NetworkCacheEntry {
  const factory _NetworkCacheEntry(
      {required final String key,
      required final String value,
      required final DateTime expiry}) = _$_NetworkCacheEntry;
  const _NetworkCacheEntry._() : super._();

  factory _NetworkCacheEntry.fromJson(Map<String, dynamic> json) =
      _$_NetworkCacheEntry.fromJson;

  @override
  String get key;
  @override

  /// Encoded JSON string of the response.
  String get value;
  @override

  /// Expiry date of the cache entry.
  DateTime get expiry;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkCacheEntryCopyWith<_$_NetworkCacheEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
