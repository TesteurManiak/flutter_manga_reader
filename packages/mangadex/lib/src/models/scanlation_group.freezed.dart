// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanlation_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScanlationGroupAttributes {

 String get name;

  /// Serializes this ScanlationGroupAttributes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanlationGroupAttributes&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ScanlationGroupAttributes(name: $name)';
}


}




/// @nodoc
@JsonSerializable()

class _ScanlationGroupAttributes implements ScanlationGroupAttributes {
  const _ScanlationGroupAttributes({required this.name});
  factory _ScanlationGroupAttributes.fromJson(Map<String, dynamic> json) => _$ScanlationGroupAttributesFromJson(json);

@override final  String name;


@override
Map<String, dynamic> toJson() {
  return _$ScanlationGroupAttributesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanlationGroupAttributes&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ScanlationGroupAttributes(name: $name)';
}


}




// dart format on
