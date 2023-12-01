// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover.dart';

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
abstract class _$$CoverListResponseImplCopyWith<$Res>
    implements $CoverListResponseCopyWith<$Res> {
  factory _$$CoverListResponseImplCopyWith(_$CoverListResponseImpl value,
          $Res Function(_$CoverListResponseImpl) then) =
      __$$CoverListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoverArt> data, int limit, int offset, int total});
}

/// @nodoc
class __$$CoverListResponseImplCopyWithImpl<$Res>
    extends _$CoverListResponseCopyWithImpl<$Res, _$CoverListResponseImpl>
    implements _$$CoverListResponseImplCopyWith<$Res> {
  __$$CoverListResponseImplCopyWithImpl(_$CoverListResponseImpl _value,
      $Res Function(_$CoverListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_$CoverListResponseImpl(
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
class _$CoverListResponseImpl implements _CoverListResponse {
  const _$CoverListResponseImpl(
      {final List<CoverArt> data = const <CoverArt>[],
      this.limit = 0,
      this.offset = 0,
      this.total = 0})
      : _data = data;

  factory _$CoverListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverListResponseImplFromJson(json);

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
            other is _$CoverListResponseImpl &&
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
  _$$CoverListResponseImplCopyWith<_$CoverListResponseImpl> get copyWith =>
      __$$CoverListResponseImplCopyWithImpl<_$CoverListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverListResponseImplToJson(
      this,
    );
  }
}

abstract class _CoverListResponse implements CoverListResponse {
  const factory _CoverListResponse(
      {final List<CoverArt> data,
      final int limit,
      final int offset,
      final int total}) = _$CoverListResponseImpl;

  factory _CoverListResponse.fromJson(Map<String, dynamic> json) =
      _$CoverListResponseImpl.fromJson;

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
  _$$CoverListResponseImplCopyWith<_$CoverListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverArt _$CoverArtFromJson(Map<String, dynamic> json) {
  return _CoverArt.fromJson(json);
}

/// @nodoc
mixin _$CoverArt {
  CoverArtAttributes? get attributes => throw _privateConstructorUsedError;
  List<Relationship> get relationships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverArtCopyWith<CoverArt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverArtCopyWith<$Res> {
  factory $CoverArtCopyWith(CoverArt value, $Res Function(CoverArt) then) =
      _$CoverArtCopyWithImpl<$Res, CoverArt>;
  @useResult
  $Res call({CoverArtAttributes? attributes, List<Relationship> relationships});

  $CoverArtAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$CoverArtCopyWithImpl<$Res, $Val extends CoverArt>
    implements $CoverArtCopyWith<$Res> {
  _$CoverArtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? relationships = null,
  }) {
    return _then(_value.copyWith(
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CoverArtAttributes?,
      relationships: null == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<Relationship>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverArtAttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $CoverArtAttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverArtImplCopyWith<$Res>
    implements $CoverArtCopyWith<$Res> {
  factory _$$CoverArtImplCopyWith(
          _$CoverArtImpl value, $Res Function(_$CoverArtImpl) then) =
      __$$CoverArtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoverArtAttributes? attributes, List<Relationship> relationships});

  @override
  $CoverArtAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$CoverArtImplCopyWithImpl<$Res>
    extends _$CoverArtCopyWithImpl<$Res, _$CoverArtImpl>
    implements _$$CoverArtImplCopyWith<$Res> {
  __$$CoverArtImplCopyWithImpl(
      _$CoverArtImpl _value, $Res Function(_$CoverArtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? relationships = null,
  }) {
    return _then(_$CoverArtImpl(
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CoverArtAttributes?,
      relationships: null == relationships
          ? _value._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<Relationship>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverArtImpl implements _CoverArt {
  const _$CoverArtImpl(
      {this.attributes,
      final List<Relationship> relationships = const <Relationship>[]})
      : _relationships = relationships;

  factory _$CoverArtImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverArtImplFromJson(json);

  @override
  final CoverArtAttributes? attributes;
  final List<Relationship> _relationships;
  @override
  @JsonKey()
  List<Relationship> get relationships {
    if (_relationships is EqualUnmodifiableListView) return _relationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationships);
  }

  @override
  String toString() {
    return 'CoverArt(attributes: $attributes, relationships: $relationships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverArtImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            const DeepCollectionEquality()
                .equals(other._relationships, _relationships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributes,
      const DeepCollectionEquality().hash(_relationships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverArtImplCopyWith<_$CoverArtImpl> get copyWith =>
      __$$CoverArtImplCopyWithImpl<_$CoverArtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverArtImplToJson(
      this,
    );
  }
}

abstract class _CoverArt implements CoverArt {
  const factory _CoverArt(
      {final CoverArtAttributes? attributes,
      final List<Relationship> relationships}) = _$CoverArtImpl;

  factory _CoverArt.fromJson(Map<String, dynamic> json) =
      _$CoverArtImpl.fromJson;

  @override
  CoverArtAttributes? get attributes;
  @override
  List<Relationship> get relationships;
  @override
  @JsonKey(ignore: true)
  _$$CoverArtImplCopyWith<_$CoverArtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverArtAttributes _$CoverArtAttributesFromJson(Map<String, dynamic> json) {
  return _CoverArtAttributes.fromJson(json);
}

/// @nodoc
mixin _$CoverArtAttributes {
  String? get fileName => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverArtAttributesCopyWith<CoverArtAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverArtAttributesCopyWith<$Res> {
  factory $CoverArtAttributesCopyWith(
          CoverArtAttributes value, $Res Function(CoverArtAttributes) then) =
      _$CoverArtAttributesCopyWithImpl<$Res, CoverArtAttributes>;
  @useResult
  $Res call({String? fileName, String? locale});
}

/// @nodoc
class _$CoverArtAttributesCopyWithImpl<$Res, $Val extends CoverArtAttributes>
    implements $CoverArtAttributesCopyWith<$Res> {
  _$CoverArtAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoverArtAttributesImplCopyWith<$Res>
    implements $CoverArtAttributesCopyWith<$Res> {
  factory _$$CoverArtAttributesImplCopyWith(_$CoverArtAttributesImpl value,
          $Res Function(_$CoverArtAttributesImpl) then) =
      __$$CoverArtAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fileName, String? locale});
}

/// @nodoc
class __$$CoverArtAttributesImplCopyWithImpl<$Res>
    extends _$CoverArtAttributesCopyWithImpl<$Res, _$CoverArtAttributesImpl>
    implements _$$CoverArtAttributesImplCopyWith<$Res> {
  __$$CoverArtAttributesImplCopyWithImpl(_$CoverArtAttributesImpl _value,
      $Res Function(_$CoverArtAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$CoverArtAttributesImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverArtAttributesImpl implements _CoverArtAttributes {
  const _$CoverArtAttributesImpl({this.fileName, this.locale});

  factory _$CoverArtAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverArtAttributesImplFromJson(json);

  @override
  final String? fileName;
  @override
  final String? locale;

  @override
  String toString() {
    return 'CoverArtAttributes(fileName: $fileName, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverArtAttributesImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverArtAttributesImplCopyWith<_$CoverArtAttributesImpl> get copyWith =>
      __$$CoverArtAttributesImplCopyWithImpl<_$CoverArtAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverArtAttributesImplToJson(
      this,
    );
  }
}

abstract class _CoverArtAttributes implements CoverArtAttributes {
  const factory _CoverArtAttributes(
      {final String? fileName,
      final String? locale}) = _$CoverArtAttributesImpl;

  factory _CoverArtAttributes.fromJson(Map<String, dynamic> json) =
      _$CoverArtAttributesImpl.fromJson;

  @override
  String? get fileName;
  @override
  String? get locale;
  @override
  @JsonKey(ignore: true)
  _$$CoverArtAttributesImplCopyWith<_$CoverArtAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
