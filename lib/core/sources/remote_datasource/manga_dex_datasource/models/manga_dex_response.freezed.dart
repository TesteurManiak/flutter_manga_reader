// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_dex_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MangaDexResponse _$MangaDexResponseFromJson(Map<String, dynamic> json) {
  return _MangaDexResponse.fromJson(json);
}

/// @nodoc
mixin _$MangaDexResponse {
  String get result => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  @MangaDexToMangaConverter()
  List<Manga> get mangas => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDexResponseCopyWith<MangaDexResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDexResponseCopyWith<$Res> {
  factory $MangaDexResponseCopyWith(
          MangaDexResponse value, $Res Function(MangaDexResponse) then) =
      _$MangaDexResponseCopyWithImpl<$Res, MangaDexResponse>;
  @useResult
  $Res call(
      {String result,
      String response,
      @JsonKey(name: 'data') @MangaDexToMangaConverter() List<Manga> mangas,
      int limit,
      int offset,
      int total});
}

/// @nodoc
class _$MangaDexResponseCopyWithImpl<$Res, $Val extends MangaDexResponse>
    implements $MangaDexResponseCopyWith<$Res> {
  _$MangaDexResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? response = null,
    Object? mangas = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      mangas: null == mangas
          ? _value.mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
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
abstract class _$$_MangaDexResponseCopyWith<$Res>
    implements $MangaDexResponseCopyWith<$Res> {
  factory _$$_MangaDexResponseCopyWith(
          _$_MangaDexResponse value, $Res Function(_$_MangaDexResponse) then) =
      __$$_MangaDexResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result,
      String response,
      @JsonKey(name: 'data') @MangaDexToMangaConverter() List<Manga> mangas,
      int limit,
      int offset,
      int total});
}

/// @nodoc
class __$$_MangaDexResponseCopyWithImpl<$Res>
    extends _$MangaDexResponseCopyWithImpl<$Res, _$_MangaDexResponse>
    implements _$$_MangaDexResponseCopyWith<$Res> {
  __$$_MangaDexResponseCopyWithImpl(
      _$_MangaDexResponse _value, $Res Function(_$_MangaDexResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? response = null,
    Object? mangas = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_$_MangaDexResponse(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      mangas: null == mangas
          ? _value._mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
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
class _$_MangaDexResponse implements _MangaDexResponse {
  const _$_MangaDexResponse(
      {required this.result,
      required this.response,
      @JsonKey(name: 'data')
      @MangaDexToMangaConverter()
      final List<Manga> mangas = const <Manga>[],
      this.limit = 0,
      this.offset = 0,
      this.total = 0})
      : _mangas = mangas;

  factory _$_MangaDexResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MangaDexResponseFromJson(json);

  @override
  final String result;
  @override
  final String response;
  final List<Manga> _mangas;
  @override
  @JsonKey(name: 'data')
  @MangaDexToMangaConverter()
  List<Manga> get mangas {
    if (_mangas is EqualUnmodifiableListView) return _mangas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangas);
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
    return 'MangaDexResponse(result: $result, response: $response, mangas: $mangas, limit: $limit, offset: $offset, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaDexResponse &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality().equals(other._mangas, _mangas) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, response,
      const DeepCollectionEquality().hash(_mangas), limit, offset, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MangaDexResponseCopyWith<_$_MangaDexResponse> get copyWith =>
      __$$_MangaDexResponseCopyWithImpl<_$_MangaDexResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaDexResponseToJson(
      this,
    );
  }
}

abstract class _MangaDexResponse implements MangaDexResponse {
  const factory _MangaDexResponse(
      {required final String result,
      required final String response,
      @JsonKey(name: 'data')
      @MangaDexToMangaConverter()
      final List<Manga> mangas,
      final int limit,
      final int offset,
      final int total}) = _$_MangaDexResponse;

  factory _MangaDexResponse.fromJson(Map<String, dynamic> json) =
      _$_MangaDexResponse.fromJson;

  @override
  String get result;
  @override
  String get response;
  @override
  @JsonKey(name: 'data')
  @MangaDexToMangaConverter()
  List<Manga> get mangas;
  @override
  int get limit;
  @override
  int get offset;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MangaDexResponseCopyWith<_$_MangaDexResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
