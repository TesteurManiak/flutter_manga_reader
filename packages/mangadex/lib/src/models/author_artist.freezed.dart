// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorArtistAttributes _$AuthorArtistAttributesFromJson(
    Map<String, dynamic> json) {
  return _AuthorArtistAttributes.fromJson(json);
}

/// @nodoc
mixin _$AuthorArtistAttributes {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorArtistAttributesCopyWith<AuthorArtistAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorArtistAttributesCopyWith<$Res> {
  factory $AuthorArtistAttributesCopyWith(AuthorArtistAttributes value,
          $Res Function(AuthorArtistAttributes) then) =
      _$AuthorArtistAttributesCopyWithImpl<$Res, AuthorArtistAttributes>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthorArtistAttributesCopyWithImpl<$Res,
        $Val extends AuthorArtistAttributes>
    implements $AuthorArtistAttributesCopyWith<$Res> {
  _$AuthorArtistAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorArtistAttributesCopyWith<$Res>
    implements $AuthorArtistAttributesCopyWith<$Res> {
  factory _$$_AuthorArtistAttributesCopyWith(_$_AuthorArtistAttributes value,
          $Res Function(_$_AuthorArtistAttributes) then) =
      __$$_AuthorArtistAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthorArtistAttributesCopyWithImpl<$Res>
    extends _$AuthorArtistAttributesCopyWithImpl<$Res,
        _$_AuthorArtistAttributes>
    implements _$$_AuthorArtistAttributesCopyWith<$Res> {
  __$$_AuthorArtistAttributesCopyWithImpl(_$_AuthorArtistAttributes _value,
      $Res Function(_$_AuthorArtistAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AuthorArtistAttributes(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorArtistAttributes implements _AuthorArtistAttributes {
  const _$_AuthorArtistAttributes({required this.name});

  factory _$_AuthorArtistAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorArtistAttributesFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthorArtistAttributes(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorArtistAttributes &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorArtistAttributesCopyWith<_$_AuthorArtistAttributes> get copyWith =>
      __$$_AuthorArtistAttributesCopyWithImpl<_$_AuthorArtistAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorArtistAttributesToJson(
      this,
    );
  }
}

abstract class _AuthorArtistAttributes implements AuthorArtistAttributes {
  const factory _AuthorArtistAttributes({required final String name}) =
      _$_AuthorArtistAttributes;

  factory _AuthorArtistAttributes.fromJson(Map<String, dynamic> json) =
      _$_AuthorArtistAttributes.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorArtistAttributesCopyWith<_$_AuthorArtistAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
