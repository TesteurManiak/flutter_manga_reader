// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<S, F> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S success)? success,
    TResult? Function(F failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<S, F> value) success,
    required TResult Function(Failure<S, F> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<S, F> value)? success,
    TResult? Function(Failure<S, F> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<S, F> value)? success,
    TResult Function(Failure<S, F> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<S, F, $Res> {
  factory $ResultCopyWith(
          Result<S, F> value, $Res Function(Result<S, F>) then) =
      _$ResultCopyWithImpl<S, F, $Res, Result<S, F>>;
}

/// @nodoc
class _$ResultCopyWithImpl<S, F, $Res, $Val extends Result<S, F>>
    implements $ResultCopyWith<S, F, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<S, F, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<S, F> value, $Res Function(_$Success<S, F>) then) =
      __$$SuccessCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({S success});
}

/// @nodoc
class __$$SuccessCopyWithImpl<S, F, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$Success<S, F>>
    implements _$$SuccessCopyWith<S, F, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<S, F> _value, $Res Function(_$Success<S, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$Success<S, F>(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$Success<S, F> extends Success<S, F> {
  const _$Success(this.success) : super._();

  @override
  final S success;

  @override
  String toString() {
    return 'Result<$S, $F>.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success<S, F> &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<S, F, _$Success<S, F>> get copyWith =>
      __$$SuccessCopyWithImpl<S, F, _$Success<S, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S success)? success,
    TResult? Function(F failure)? failure,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<S, F> value) success,
    required TResult Function(Failure<S, F> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<S, F> value)? success,
    TResult? Function(Failure<S, F> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<S, F> value)? success,
    TResult Function(Failure<S, F> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<S, F> extends Result<S, F> {
  const factory Success(final S success) = _$Success<S, F>;
  const Success._() : super._();

  S get success;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<S, F, _$Success<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<S, F, $Res> {
  factory _$$FailureCopyWith(
          _$Failure<S, F> value, $Res Function(_$Failure<S, F>) then) =
      __$$FailureCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$FailureCopyWithImpl<S, F, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$Failure<S, F>>
    implements _$$FailureCopyWith<S, F, $Res> {
  __$$FailureCopyWithImpl(
      _$Failure<S, F> _value, $Res Function(_$Failure<S, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$Failure<S, F>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$Failure<S, F> extends Failure<S, F> {
  const _$Failure(this.failure) : super._();

  @override
  final F failure;

  @override
  String toString() {
    return 'Result<$S, $F>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure<S, F> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCopyWith<S, F, _$Failure<S, F>> get copyWith =>
      __$$FailureCopyWithImpl<S, F, _$Failure<S, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S success)? success,
    TResult? Function(F failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<S, F> value) success,
    required TResult Function(Failure<S, F> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<S, F> value)? success,
    TResult? Function(Failure<S, F> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<S, F> value)? success,
    TResult Function(Failure<S, F> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<S, F> extends Result<S, F> {
  const factory Failure(final F failure) = _$Failure<S, F>;
  const Failure._() : super._();

  F get failure;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<S, F, _$Failure<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}
