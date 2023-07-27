// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorAttributes _$AuthorAttributesFromJson(Map<String, dynamic> json) {
  return _AuthorAttributes.fromJson(json);
}

/// @nodoc
mixin _$AuthorAttributes {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorAttributesCopyWith<AuthorAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorAttributesCopyWith<$Res> {
  factory $AuthorAttributesCopyWith(
          AuthorAttributes value, $Res Function(AuthorAttributes) then) =
      _$AuthorAttributesCopyWithImpl<$Res, AuthorAttributes>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthorAttributesCopyWithImpl<$Res, $Val extends AuthorAttributes>
    implements $AuthorAttributesCopyWith<$Res> {
  _$AuthorAttributesCopyWithImpl(this._value, this._then);

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
abstract class _$$_AuthorAttributesCopyWith<$Res>
    implements $AuthorAttributesCopyWith<$Res> {
  factory _$$_AuthorAttributesCopyWith(
          _$_AuthorAttributes value, $Res Function(_$_AuthorAttributes) then) =
      __$$_AuthorAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthorAttributesCopyWithImpl<$Res>
    extends _$AuthorAttributesCopyWithImpl<$Res, _$_AuthorAttributes>
    implements _$$_AuthorAttributesCopyWith<$Res> {
  __$$_AuthorAttributesCopyWithImpl(
      _$_AuthorAttributes _value, $Res Function(_$_AuthorAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AuthorAttributes(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorAttributes implements _AuthorAttributes {
  const _$_AuthorAttributes({required this.name});

  factory _$_AuthorAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorAttributesFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthorAttributes(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorAttributes &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorAttributesCopyWith<_$_AuthorAttributes> get copyWith =>
      __$$_AuthorAttributesCopyWithImpl<_$_AuthorAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorAttributesToJson(
      this,
    );
  }
}

abstract class _AuthorAttributes implements AuthorAttributes {
  const factory _AuthorAttributes({required final String name}) =
      _$_AuthorAttributes;

  factory _AuthorAttributes.fromJson(Map<String, dynamic> json) =
      _$_AuthorAttributes.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorAttributesCopyWith<_$_AuthorAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
