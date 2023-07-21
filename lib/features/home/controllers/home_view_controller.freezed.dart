// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeViewState {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeViewStateCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$_HomeViewStateCopyWith(
          _$_HomeViewState value, $Res Function(_$_HomeViewState) then) =
      __$$_HomeViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$_HomeViewStateCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$_HomeViewState>
    implements _$$_HomeViewStateCopyWith<$Res> {
  __$$_HomeViewStateCopyWithImpl(
      _$_HomeViewState _value, $Res Function(_$_HomeViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$_HomeViewState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeViewState implements _HomeViewState {
  const _$_HomeViewState({this.counter = 0});

  @override
  @JsonKey()
  final int counter;

  @override
  String toString() {
    return 'HomeViewState(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeViewState &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeViewStateCopyWith<_$_HomeViewState> get copyWith =>
      __$$_HomeViewStateCopyWithImpl<_$_HomeViewState>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState({final int counter}) = _$_HomeViewState;

  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_HomeViewStateCopyWith<_$_HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
