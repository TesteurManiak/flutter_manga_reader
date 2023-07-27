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

CoverArt _$CoverArtFromJson(Map<String, dynamic> json) {
  return _CoverArt.fromJson(json);
}

/// @nodoc
mixin _$CoverArt {
  CoverArtAttributes? get attributes => throw _privateConstructorUsedError;
  @RelationshipConverter()
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
  $Res call(
      {CoverArtAttributes? attributes,
      @RelationshipConverter() List<Relationship> relationships});

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
abstract class _$$_CoverArtCopyWith<$Res> implements $CoverArtCopyWith<$Res> {
  factory _$$_CoverArtCopyWith(
          _$_CoverArt value, $Res Function(_$_CoverArt) then) =
      __$$_CoverArtCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoverArtAttributes? attributes,
      @RelationshipConverter() List<Relationship> relationships});

  @override
  $CoverArtAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$_CoverArtCopyWithImpl<$Res>
    extends _$CoverArtCopyWithImpl<$Res, _$_CoverArt>
    implements _$$_CoverArtCopyWith<$Res> {
  __$$_CoverArtCopyWithImpl(
      _$_CoverArt _value, $Res Function(_$_CoverArt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? relationships = null,
  }) {
    return _then(_$_CoverArt(
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
class _$_CoverArt implements _CoverArt {
  const _$_CoverArt(
      {this.attributes,
      @RelationshipConverter()
      final List<Relationship> relationships = const <Relationship>[]})
      : _relationships = relationships;

  factory _$_CoverArt.fromJson(Map<String, dynamic> json) =>
      _$$_CoverArtFromJson(json);

  @override
  final CoverArtAttributes? attributes;
  final List<Relationship> _relationships;
  @override
  @JsonKey()
  @RelationshipConverter()
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
            other is _$_CoverArt &&
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
  _$$_CoverArtCopyWith<_$_CoverArt> get copyWith =>
      __$$_CoverArtCopyWithImpl<_$_CoverArt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverArtToJson(
      this,
    );
  }
}

abstract class _CoverArt implements CoverArt {
  const factory _CoverArt(
          {final CoverArtAttributes? attributes,
          @RelationshipConverter() final List<Relationship> relationships}) =
      _$_CoverArt;

  factory _CoverArt.fromJson(Map<String, dynamic> json) = _$_CoverArt.fromJson;

  @override
  CoverArtAttributes? get attributes;
  @override
  @RelationshipConverter()
  List<Relationship> get relationships;
  @override
  @JsonKey(ignore: true)
  _$$_CoverArtCopyWith<_$_CoverArt> get copyWith =>
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
abstract class _$$_CoverArtAttributesCopyWith<$Res>
    implements $CoverArtAttributesCopyWith<$Res> {
  factory _$$_CoverArtAttributesCopyWith(_$_CoverArtAttributes value,
          $Res Function(_$_CoverArtAttributes) then) =
      __$$_CoverArtAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fileName, String? locale});
}

/// @nodoc
class __$$_CoverArtAttributesCopyWithImpl<$Res>
    extends _$CoverArtAttributesCopyWithImpl<$Res, _$_CoverArtAttributes>
    implements _$$_CoverArtAttributesCopyWith<$Res> {
  __$$_CoverArtAttributesCopyWithImpl(
      _$_CoverArtAttributes _value, $Res Function(_$_CoverArtAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$_CoverArtAttributes(
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
class _$_CoverArtAttributes implements _CoverArtAttributes {
  const _$_CoverArtAttributes({this.fileName, this.locale});

  factory _$_CoverArtAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_CoverArtAttributesFromJson(json);

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
            other is _$_CoverArtAttributes &&
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
  _$$_CoverArtAttributesCopyWith<_$_CoverArtAttributes> get copyWith =>
      __$$_CoverArtAttributesCopyWithImpl<_$_CoverArtAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverArtAttributesToJson(
      this,
    );
  }
}

abstract class _CoverArtAttributes implements CoverArtAttributes {
  const factory _CoverArtAttributes(
      {final String? fileName, final String? locale}) = _$_CoverArtAttributes;

  factory _CoverArtAttributes.fromJson(Map<String, dynamic> json) =
      _$_CoverArtAttributes.fromJson;

  @override
  String? get fileName;
  @override
  String? get locale;
  @override
  @JsonKey(ignore: true)
  _$$_CoverArtAttributesCopyWith<_$_CoverArtAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
