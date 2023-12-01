// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAttributes _$UserAttributesFromJson(Map<String, dynamic> json) {
  return _UserAttributes.fromJson(json);
}

/// @nodoc
mixin _$UserAttributes {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$UserAttributesImpl implements _UserAttributes {
  const _$UserAttributesImpl({required this.username});

  factory _$UserAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAttributesImplFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'UserAttributes(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAttributesImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAttributesImplToJson(
      this,
    );
  }
}

abstract class _UserAttributes implements UserAttributes {
  const factory _UserAttributes({required final String username}) =
      _$UserAttributesImpl;

  factory _UserAttributes.fromJson(Map<String, dynamic> json) =
      _$UserAttributesImpl.fromJson;

  @override
  String get username;
}
