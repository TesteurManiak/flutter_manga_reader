// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackupState {}

/// @nodoc
abstract class $BackupStateCopyWith<$Res> {
  factory $BackupStateCopyWith(
          BackupState value, $Res Function(BackupState) then) =
      _$BackupStateCopyWithImpl<$Res, BackupState>;
}

/// @nodoc
class _$BackupStateCopyWithImpl<$Res, $Val extends BackupState>
    implements $BackupStateCopyWith<$Res> {
  _$BackupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BackupStateInitialImplCopyWith<$Res> {
  factory _$$BackupStateInitialImplCopyWith(_$BackupStateInitialImpl value,
          $Res Function(_$BackupStateInitialImpl) then) =
      __$$BackupStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackupStateInitialImplCopyWithImpl<$Res>
    extends _$BackupStateCopyWithImpl<$Res, _$BackupStateInitialImpl>
    implements _$$BackupStateInitialImplCopyWith<$Res> {
  __$$BackupStateInitialImplCopyWithImpl(_$BackupStateInitialImpl _value,
      $Res Function(_$BackupStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackupStateInitialImpl implements BackupStateInitial {
  const _$BackupStateInitialImpl();

  @override
  String toString() {
    return 'BackupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackupStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class BackupStateInitial implements BackupState {
  const factory BackupStateInitial() = _$BackupStateInitialImpl;
}

/// @nodoc
abstract class _$$BackupStateLoadingImplCopyWith<$Res> {
  factory _$$BackupStateLoadingImplCopyWith(_$BackupStateLoadingImpl value,
          $Res Function(_$BackupStateLoadingImpl) then) =
      __$$BackupStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackupStateLoadingImplCopyWithImpl<$Res>
    extends _$BackupStateCopyWithImpl<$Res, _$BackupStateLoadingImpl>
    implements _$$BackupStateLoadingImplCopyWith<$Res> {
  __$$BackupStateLoadingImplCopyWithImpl(_$BackupStateLoadingImpl _value,
      $Res Function(_$BackupStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackupStateLoadingImpl implements BackupStateLoading {
  const _$BackupStateLoadingImpl();

  @override
  String toString() {
    return 'BackupState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackupStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class BackupStateLoading implements BackupState {
  const factory BackupStateLoading() = _$BackupStateLoadingImpl;
}

/// @nodoc
abstract class _$$BackupStateSuccessImplCopyWith<$Res> {
  factory _$$BackupStateSuccessImplCopyWith(_$BackupStateSuccessImpl value,
          $Res Function(_$BackupStateSuccessImpl) then) =
      __$$BackupStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackupStateSuccessImplCopyWithImpl<$Res>
    extends _$BackupStateCopyWithImpl<$Res, _$BackupStateSuccessImpl>
    implements _$$BackupStateSuccessImplCopyWith<$Res> {
  __$$BackupStateSuccessImplCopyWithImpl(_$BackupStateSuccessImpl _value,
      $Res Function(_$BackupStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackupStateSuccessImpl implements BackupStateSuccess {
  const _$BackupStateSuccessImpl();

  @override
  String toString() {
    return 'BackupState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackupStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class BackupStateSuccess implements BackupState {
  const factory BackupStateSuccess() = _$BackupStateSuccessImpl;
}

/// @nodoc
abstract class _$$BackupStateErrorImplCopyWith<$Res> {
  factory _$$BackupStateErrorImplCopyWith(_$BackupStateErrorImpl value,
          $Res Function(_$BackupStateErrorImpl) then) =
      __$$BackupStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BackupErrorType type});
}

/// @nodoc
class __$$BackupStateErrorImplCopyWithImpl<$Res>
    extends _$BackupStateCopyWithImpl<$Res, _$BackupStateErrorImpl>
    implements _$$BackupStateErrorImplCopyWith<$Res> {
  __$$BackupStateErrorImplCopyWithImpl(_$BackupStateErrorImpl _value,
      $Res Function(_$BackupStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BackupStateErrorImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackupErrorType,
    ));
  }
}

/// @nodoc

class _$BackupStateErrorImpl implements BackupStateError {
  const _$BackupStateErrorImpl(this.type);

  @override
  final BackupErrorType type;

  @override
  String toString() {
    return 'BackupState.error(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackupStateErrorImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackupStateErrorImplCopyWith<_$BackupStateErrorImpl> get copyWith =>
      __$$BackupStateErrorImplCopyWithImpl<_$BackupStateErrorImpl>(
          this, _$identity);
}

abstract class BackupStateError implements BackupState {
  const factory BackupStateError(final BackupErrorType type) =
      _$BackupStateErrorImpl;

  BackupErrorType get type;
  @JsonKey(ignore: true)
  _$$BackupStateErrorImplCopyWith<_$BackupStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
