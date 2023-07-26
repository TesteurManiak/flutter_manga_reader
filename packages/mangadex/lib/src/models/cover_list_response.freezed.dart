// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoverListResponse _$CoverListResponseFromJson(Map<String, dynamic> json) {
  return _CoverListResponse.fromJson(json);
}

/// @nodoc
mixin _$CoverListResponse {
  List<CoverArt> get data => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverListResponseCopyWith<CoverListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverListResponseCopyWith<$Res> {
  factory $CoverListResponseCopyWith(
          CoverListResponse value, $Res Function(CoverListResponse) then) =
      _$CoverListResponseCopyWithImpl<$Res, CoverListResponse>;
  @useResult
  $Res call({List<CoverArt> data, int limit, int offset, int total});
}

/// @nodoc
class _$CoverListResponseCopyWithImpl<$Res, $Val extends CoverListResponse>
    implements $CoverListResponseCopyWith<$Res> {
  _$CoverListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoverArt>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoverListResponseCopyWith<$Res>
    implements $CoverListResponseCopyWith<$Res> {
  factory _$$_CoverListResponseCopyWith(_$_CoverListResponse value,
          $Res Function(_$_CoverListResponse) then) =
      __$$_CoverListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoverArt> data, int limit, int offset, int total});
}

/// @nodoc
class __$$_CoverListResponseCopyWithImpl<$Res>
    extends _$CoverListResponseCopyWithImpl<$Res, _$_CoverListResponse>
    implements _$$_CoverListResponseCopyWith<$Res> {
  __$$_CoverListResponseCopyWithImpl(
      _$_CoverListResponse _value, $Res Function(_$_CoverListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_$_CoverListResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoverArt>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoverListResponse implements _CoverListResponse {
  const _$_CoverListResponse(
      {final List<CoverArt> data = const <CoverArt>[],
      this.limit = 0,
      this.offset = 0,
      this.total = 0})
      : _data = data;

  factory _$_CoverListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CoverListResponseFromJson(json);

  final List<CoverArt> _data;
  @override
  @JsonKey()
  List<CoverArt> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'CoverListResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoverListResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), limit, offset, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoverListResponseCopyWith<_$_CoverListResponse> get copyWith =>
      __$$_CoverListResponseCopyWithImpl<_$_CoverListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverListResponseToJson(
      this,
    );
  }
}

abstract class _CoverListResponse implements CoverListResponse {
  const factory _CoverListResponse(
      {final List<CoverArt> data,
      final int limit,
      final int offset,
      final int total}) = _$_CoverListResponse;

  factory _CoverListResponse.fromJson(Map<String, dynamic> json) =
      _$_CoverListResponse.fromJson;

  @override
  List<CoverArt> get data;
  @override
  int get limit;
  @override
  int get offset;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_CoverListResponseCopyWith<_$_CoverListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
