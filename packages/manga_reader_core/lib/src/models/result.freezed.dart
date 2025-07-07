// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Result<S,F> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<S, F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Result<$S, $F>()';
}


}




/// @nodoc


class Success<S,F> extends Result<S, F> {
  const Success(this.success): super._();
  

 final  S success;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<S, F>&&const DeepCollectionEquality().equals(other.success, success));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(success));

@override
String toString() {
  return 'Result<$S, $F>.success(success: $success)';
}


}




/// @nodoc


class Failure<S,F> extends Result<S, F> {
  const Failure(this.failure): super._();
  

 final  F failure;




@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<S, F>&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'Result<$S, $F>.failure(failure: $failure)';
}


}




// dart format on
