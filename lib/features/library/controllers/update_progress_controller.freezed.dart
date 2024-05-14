// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_progress_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProgressState {
  int? get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProgressStateCopyWith<UpdateProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProgressStateCopyWith<$Res> {
  factory $UpdateProgressStateCopyWith(
          UpdateProgressState value, $Res Function(UpdateProgressState) then) =
      _$UpdateProgressStateCopyWithImpl<$Res, UpdateProgressState>;
  @useResult
  $Res call({int progress});
}

/// @nodoc
class _$UpdateProgressStateCopyWithImpl<$Res, $Val extends UpdateProgressState>
    implements $UpdateProgressStateCopyWith<$Res> {
  _$UpdateProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress!
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProgressLoadingImplCopyWith<$Res>
    implements $UpdateProgressStateCopyWith<$Res> {
  factory _$$UpdateProgressLoadingImplCopyWith(
          _$UpdateProgressLoadingImpl value,
          $Res Function(_$UpdateProgressLoadingImpl) then) =
      __$$UpdateProgressLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int progress});
}

/// @nodoc
class __$$UpdateProgressLoadingImplCopyWithImpl<$Res>
    extends _$UpdateProgressStateCopyWithImpl<$Res, _$UpdateProgressLoadingImpl>
    implements _$$UpdateProgressLoadingImplCopyWith<$Res> {
  __$$UpdateProgressLoadingImplCopyWithImpl(_$UpdateProgressLoadingImpl _value,
      $Res Function(_$UpdateProgressLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$UpdateProgressLoadingImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateProgressLoadingImpl extends UpdateProgressLoading {
  const _$UpdateProgressLoadingImpl({this.progress = 0}) : super._();

  @override
  @JsonKey()
  final int progress;

  @override
  String toString() {
    return 'UpdateProgressState.loading(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgressLoadingImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgressLoadingImplCopyWith<_$UpdateProgressLoadingImpl>
      get copyWith => __$$UpdateProgressLoadingImplCopyWithImpl<
          _$UpdateProgressLoadingImpl>(this, _$identity);
}

abstract class UpdateProgressLoading extends UpdateProgressState {
  const factory UpdateProgressLoading({final int progress}) =
      _$UpdateProgressLoadingImpl;
  const UpdateProgressLoading._() : super._();

  @override
  int get progress;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProgressLoadingImplCopyWith<_$UpdateProgressLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProgressLoadedImplCopyWith<$Res>
    implements $UpdateProgressStateCopyWith<$Res> {
  factory _$$UpdateProgressLoadedImplCopyWith(_$UpdateProgressLoadedImpl value,
          $Res Function(_$UpdateProgressLoadedImpl) then) =
      __$$UpdateProgressLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? progress});
}

/// @nodoc
class __$$UpdateProgressLoadedImplCopyWithImpl<$Res>
    extends _$UpdateProgressStateCopyWithImpl<$Res, _$UpdateProgressLoadedImpl>
    implements _$$UpdateProgressLoadedImplCopyWith<$Res> {
  __$$UpdateProgressLoadedImplCopyWithImpl(_$UpdateProgressLoadedImpl _value,
      $Res Function(_$UpdateProgressLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_$UpdateProgressLoadedImpl(
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateProgressLoadedImpl extends UpdateProgressLoaded {
  const _$UpdateProgressLoadedImpl({this.progress}) : super._();

  @override
  final int? progress;

  @override
  String toString() {
    return 'UpdateProgressState.loaded(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgressLoadedImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgressLoadedImplCopyWith<_$UpdateProgressLoadedImpl>
      get copyWith =>
          __$$UpdateProgressLoadedImplCopyWithImpl<_$UpdateProgressLoadedImpl>(
              this, _$identity);
}

abstract class UpdateProgressLoaded extends UpdateProgressState {
  const factory UpdateProgressLoaded({final int? progress}) =
      _$UpdateProgressLoadedImpl;
  const UpdateProgressLoaded._() : super._();

  @override
  int? get progress;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProgressLoadedImplCopyWith<_$UpdateProgressLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
