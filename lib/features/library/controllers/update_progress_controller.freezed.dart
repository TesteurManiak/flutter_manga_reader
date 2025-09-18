// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_progress_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProgressState {

 int? get progress;
/// Create a copy of UpdateProgressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProgressStateCopyWith<UpdateProgressState> get copyWith => _$UpdateProgressStateCopyWithImpl<UpdateProgressState>(this as UpdateProgressState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProgressState&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'UpdateProgressState(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $UpdateProgressStateCopyWith<$Res>  {
  factory $UpdateProgressStateCopyWith(UpdateProgressState value, $Res Function(UpdateProgressState) _then) = _$UpdateProgressStateCopyWithImpl;
@useResult
$Res call({
 int progress
});




}
/// @nodoc
class _$UpdateProgressStateCopyWithImpl<$Res>
    implements $UpdateProgressStateCopyWith<$Res> {
  _$UpdateProgressStateCopyWithImpl(this._self, this._then);

  final UpdateProgressState _self;
  final $Res Function(UpdateProgressState) _then;

/// Create a copy of UpdateProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? progress = null,}) {
  return _then(_self.copyWith(
progress: null == progress ? _self.progress! : progress // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProgressState].
extension UpdateProgressStatePatterns on UpdateProgressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateProgressLoading value)?  loading,TResult Function( UpdateProgressLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateProgressLoading() when loading != null:
return loading(_that);case UpdateProgressLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateProgressLoading value)  loading,required TResult Function( UpdateProgressLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case UpdateProgressLoading():
return loading(_that);case UpdateProgressLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateProgressLoading value)?  loading,TResult? Function( UpdateProgressLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case UpdateProgressLoading() when loading != null:
return loading(_that);case UpdateProgressLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int progress)?  loading,TResult Function( int? progress)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateProgressLoading() when loading != null:
return loading(_that.progress);case UpdateProgressLoaded() when loaded != null:
return loaded(_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int progress)  loading,required TResult Function( int? progress)  loaded,}) {final _that = this;
switch (_that) {
case UpdateProgressLoading():
return loading(_that.progress);case UpdateProgressLoaded():
return loaded(_that.progress);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int progress)?  loading,TResult? Function( int? progress)?  loaded,}) {final _that = this;
switch (_that) {
case UpdateProgressLoading() when loading != null:
return loading(_that.progress);case UpdateProgressLoaded() when loaded != null:
return loaded(_that.progress);case _:
  return null;

}
}

}

/// @nodoc


class UpdateProgressLoading extends UpdateProgressState {
  const UpdateProgressLoading({this.progress = 0}): super._();
  

@override@JsonKey() final  int progress;

/// Create a copy of UpdateProgressState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProgressLoadingCopyWith<UpdateProgressLoading> get copyWith => _$UpdateProgressLoadingCopyWithImpl<UpdateProgressLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProgressLoading&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'UpdateProgressState.loading(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $UpdateProgressLoadingCopyWith<$Res> implements $UpdateProgressStateCopyWith<$Res> {
  factory $UpdateProgressLoadingCopyWith(UpdateProgressLoading value, $Res Function(UpdateProgressLoading) _then) = _$UpdateProgressLoadingCopyWithImpl;
@override @useResult
$Res call({
 int progress
});




}
/// @nodoc
class _$UpdateProgressLoadingCopyWithImpl<$Res>
    implements $UpdateProgressLoadingCopyWith<$Res> {
  _$UpdateProgressLoadingCopyWithImpl(this._self, this._then);

  final UpdateProgressLoading _self;
  final $Res Function(UpdateProgressLoading) _then;

/// Create a copy of UpdateProgressState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(UpdateProgressLoading(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateProgressLoaded extends UpdateProgressState {
  const UpdateProgressLoaded({this.progress}): super._();
  

@override final  int? progress;

/// Create a copy of UpdateProgressState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProgressLoadedCopyWith<UpdateProgressLoaded> get copyWith => _$UpdateProgressLoadedCopyWithImpl<UpdateProgressLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProgressLoaded&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'UpdateProgressState.loaded(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $UpdateProgressLoadedCopyWith<$Res> implements $UpdateProgressStateCopyWith<$Res> {
  factory $UpdateProgressLoadedCopyWith(UpdateProgressLoaded value, $Res Function(UpdateProgressLoaded) _then) = _$UpdateProgressLoadedCopyWithImpl;
@override @useResult
$Res call({
 int? progress
});




}
/// @nodoc
class _$UpdateProgressLoadedCopyWithImpl<$Res>
    implements $UpdateProgressLoadedCopyWith<$Res> {
  _$UpdateProgressLoadedCopyWithImpl(this._self, this._then);

  final UpdateProgressLoaded _self;
  final $Res Function(UpdateProgressLoaded) _then;

/// Create a copy of UpdateProgressState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progress = freezed,}) {
  return _then(UpdateProgressLoaded(
progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
