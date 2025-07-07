// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BackupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState()';
}


}

/// @nodoc
class $BackupStateCopyWith<$Res>  {
$BackupStateCopyWith(BackupState _, $Res Function(BackupState) __);
}


/// @nodoc


class BackupStateInitial implements BackupState {
  const BackupStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState.initial()';
}


}




/// @nodoc


class BackupStateLoading implements BackupState {
  const BackupStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState.loading()';
}


}




/// @nodoc


class BackupStateSuccess implements BackupState {
  const BackupStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState.success()';
}


}




/// @nodoc


class BackupStateError implements BackupState {
  const BackupStateError(this.type);
  

 final  BackupErrorType type;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupStateErrorCopyWith<BackupStateError> get copyWith => _$BackupStateErrorCopyWithImpl<BackupStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupStateError&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'BackupState.error(type: $type)';
}


}

/// @nodoc
abstract mixin class $BackupStateErrorCopyWith<$Res> implements $BackupStateCopyWith<$Res> {
  factory $BackupStateErrorCopyWith(BackupStateError value, $Res Function(BackupStateError) _then) = _$BackupStateErrorCopyWithImpl;
@useResult
$Res call({
 BackupErrorType type
});




}
/// @nodoc
class _$BackupStateErrorCopyWithImpl<$Res>
    implements $BackupStateErrorCopyWith<$Res> {
  _$BackupStateErrorCopyWithImpl(this._self, this._then);

  final BackupStateError _self;
  final $Res Function(BackupStateError) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(BackupStateError(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BackupErrorType,
  ));
}


}

// dart format on
