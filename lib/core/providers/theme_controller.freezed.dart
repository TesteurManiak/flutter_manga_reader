// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeState implements DiagnosticableTreeMixin {

 ThemeMode get mode; bool get pureDarkMode;
/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeStateCopyWith<ThemeState> get copyWith => _$ThemeStateCopyWithImpl<ThemeState>(this as ThemeState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ThemeState'))
    ..add(DiagnosticsProperty('mode', mode))..add(DiagnosticsProperty('pureDarkMode', pureDarkMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.pureDarkMode, pureDarkMode) || other.pureDarkMode == pureDarkMode));
}


@override
int get hashCode => Object.hash(runtimeType,mode,pureDarkMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ThemeState(mode: $mode, pureDarkMode: $pureDarkMode)';
}


}

/// @nodoc
abstract mixin class $ThemeStateCopyWith<$Res>  {
  factory $ThemeStateCopyWith(ThemeState value, $Res Function(ThemeState) _then) = _$ThemeStateCopyWithImpl;
@useResult
$Res call({
 ThemeMode mode, bool pureDarkMode
});




}
/// @nodoc
class _$ThemeStateCopyWithImpl<$Res>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._self, this._then);

  final ThemeState _self;
  final $Res Function(ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? pureDarkMode = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,pureDarkMode: null == pureDarkMode ? _self.pureDarkMode : pureDarkMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ThemeState with DiagnosticableTreeMixin implements ThemeState {
  const _ThemeState({required this.mode, this.pureDarkMode = false});
  

@override final  ThemeMode mode;
@override@JsonKey() final  bool pureDarkMode;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeStateCopyWith<_ThemeState> get copyWith => __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ThemeState'))
    ..add(DiagnosticsProperty('mode', mode))..add(DiagnosticsProperty('pureDarkMode', pureDarkMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.pureDarkMode, pureDarkMode) || other.pureDarkMode == pureDarkMode));
}


@override
int get hashCode => Object.hash(runtimeType,mode,pureDarkMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ThemeState(mode: $mode, pureDarkMode: $pureDarkMode)';
}


}

/// @nodoc
abstract mixin class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(_ThemeState value, $Res Function(_ThemeState) _then) = __$ThemeStateCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode mode, bool pureDarkMode
});




}
/// @nodoc
class __$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(this._self, this._then);

  final _ThemeState _self;
  final $Res Function(_ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? pureDarkMode = null,}) {
  return _then(_ThemeState(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,pureDarkMode: null == pureDarkMode ? _self.pureDarkMode : pureDarkMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
