// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericAttributes _$GenericAttributesFromJson(Map<String, dynamic> json) {
  return _GenericAttributes.fromJson(json);
}

/// @nodoc
mixin _$GenericAttributes {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$GenericAttributesImpl implements _GenericAttributes {
  const _$GenericAttributesImpl({required this.name});

  factory _$GenericAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericAttributesImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'GenericAttributes(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericAttributesImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericAttributesImplToJson(
      this,
    );
  }
}

abstract class _GenericAttributes implements GenericAttributes {
  const factory _GenericAttributes({required final String name}) =
      _$GenericAttributesImpl;

  factory _GenericAttributes.fromJson(Map<String, dynamic> json) =
      _$GenericAttributesImpl.fromJson;

  @override
  String get name;
}
