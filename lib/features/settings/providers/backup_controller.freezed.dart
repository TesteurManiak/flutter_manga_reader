// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [BackupState].
extension BackupStatePatterns on BackupState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BackupStateInitial value)?  initial,TResult Function( BackupStateLoading value)?  loading,TResult Function( BackupStateSuccess value)?  success,TResult Function( BackupStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BackupStateInitial() when initial != null:
return initial(_that);case BackupStateLoading() when loading != null:
return loading(_that);case BackupStateSuccess() when success != null:
return success(_that);case BackupStateError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BackupStateInitial value)  initial,required TResult Function( BackupStateLoading value)  loading,required TResult Function( BackupStateSuccess value)  success,required TResult Function( BackupStateError value)  error,}){
final _that = this;
switch (_that) {
case BackupStateInitial():
return initial(_that);case BackupStateLoading():
return loading(_that);case BackupStateSuccess():
return success(_that);case BackupStateError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BackupStateInitial value)?  initial,TResult? Function( BackupStateLoading value)?  loading,TResult? Function( BackupStateSuccess value)?  success,TResult? Function( BackupStateError value)?  error,}){
final _that = this;
switch (_that) {
case BackupStateInitial() when initial != null:
return initial(_that);case BackupStateLoading() when loading != null:
return loading(_that);case BackupStateSuccess() when success != null:
return success(_that);case BackupStateError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( BackupErrorType type)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BackupStateInitial() when initial != null:
return initial();case BackupStateLoading() when loading != null:
return loading();case BackupStateSuccess() when success != null:
return success();case BackupStateError() when error != null:
return error(_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( BackupErrorType type)  error,}) {final _that = this;
switch (_that) {
case BackupStateInitial():
return initial();case BackupStateLoading():
return loading();case BackupStateSuccess():
return success();case BackupStateError():
return error(_that.type);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( BackupErrorType type)?  error,}) {final _that = this;
switch (_that) {
case BackupStateInitial() when initial != null:
return initial();case BackupStateLoading() when loading != null:
return loading();case BackupStateSuccess() when success != null:
return success();case BackupStateError() when error != null:
return error(_that.type);case _:
  return null;

}
}

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
