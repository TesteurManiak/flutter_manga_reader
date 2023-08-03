// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanlation_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScanlationGroupAttributes _$ScanlationGroupAttributesFromJson(
    Map<String, dynamic> json) {
  return _ScanlationGroupAttributes.fromJson(json);
}

/// @nodoc
mixin _$ScanlationGroupAttributes {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_ScanlationGroupAttributes implements _ScanlationGroupAttributes {
  const _$_ScanlationGroupAttributes({required this.name});

  factory _$_ScanlationGroupAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_ScanlationGroupAttributesFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ScanlationGroupAttributes(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanlationGroupAttributes &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScanlationGroupAttributesToJson(
      this,
    );
  }
}

abstract class _ScanlationGroupAttributes implements ScanlationGroupAttributes {
  const factory _ScanlationGroupAttributes({required final String name}) =
      _$_ScanlationGroupAttributes;

  factory _ScanlationGroupAttributes.fromJson(Map<String, dynamic> json) =
      _$_ScanlationGroupAttributes.fromJson;

  @override
  String get name;
}
