// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryState {}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res, LibraryState>;
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res, $Val extends LibraryState>
    implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LibraryLoadingImplCopyWith<$Res> {
  factory _$$LibraryLoadingImplCopyWith(_$LibraryLoadingImpl value,
          $Res Function(_$LibraryLoadingImpl) then) =
      __$$LibraryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LibraryLoadingImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryLoadingImpl>
    implements _$$LibraryLoadingImplCopyWith<$Res> {
  __$$LibraryLoadingImplCopyWithImpl(
      _$LibraryLoadingImpl _value, $Res Function(_$LibraryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LibraryLoadingImpl extends LibraryLoading {
  const _$LibraryLoadingImpl() : super._();

  @override
  String toString() {
    return 'LibraryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LibraryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LibraryLoading extends LibraryState {
  const factory LibraryLoading() = _$LibraryLoadingImpl;
  const LibraryLoading._() : super._();
}

/// @nodoc
abstract class _$$LibraryLoadedImplCopyWith<$Res> {
  factory _$$LibraryLoadedImplCopyWith(
          _$LibraryLoadedImpl value, $Res Function(_$LibraryLoadedImpl) then) =
      __$$LibraryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Manga> mangas});
}

/// @nodoc
class __$$LibraryLoadedImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryLoadedImpl>
    implements _$$LibraryLoadedImplCopyWith<$Res> {
  __$$LibraryLoadedImplCopyWithImpl(
      _$LibraryLoadedImpl _value, $Res Function(_$LibraryLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mangas = null,
  }) {
    return _then(_$LibraryLoadedImpl(
      mangas: null == mangas
          ? _value._mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<Manga>,
    ));
  }
}

/// @nodoc

class _$LibraryLoadedImpl extends LibraryLoaded {
  const _$LibraryLoadedImpl({required final List<Manga> mangas})
      : _mangas = mangas,
        super._();

  final List<Manga> _mangas;
  @override
  List<Manga> get mangas {
    if (_mangas is EqualUnmodifiableListView) return _mangas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangas);
  }

  @override
  String toString() {
    return 'LibraryState.loaded(mangas: $mangas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryLoadedImpl &&
            const DeepCollectionEquality().equals(other._mangas, _mangas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mangas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryLoadedImplCopyWith<_$LibraryLoadedImpl> get copyWith =>
      __$$LibraryLoadedImplCopyWithImpl<_$LibraryLoadedImpl>(this, _$identity);
}

abstract class LibraryLoaded extends LibraryState {
  const factory LibraryLoaded({required final List<Manga> mangas}) =
      _$LibraryLoadedImpl;
  const LibraryLoaded._() : super._();

  List<Manga> get mangas;
  @JsonKey(ignore: true)
  _$$LibraryLoadedImplCopyWith<_$LibraryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LibraryEmptyImplCopyWith<$Res> {
  factory _$$LibraryEmptyImplCopyWith(
          _$LibraryEmptyImpl value, $Res Function(_$LibraryEmptyImpl) then) =
      __$$LibraryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LibraryEmptyImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryEmptyImpl>
    implements _$$LibraryEmptyImplCopyWith<$Res> {
  __$$LibraryEmptyImplCopyWithImpl(
      _$LibraryEmptyImpl _value, $Res Function(_$LibraryEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LibraryEmptyImpl extends LibraryEmpty {
  const _$LibraryEmptyImpl() : super._();

  @override
  String toString() {
    return 'LibraryState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LibraryEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LibraryEmpty extends LibraryState {
  const factory LibraryEmpty() = _$LibraryEmptyImpl;
  const LibraryEmpty._() : super._();
}

/// @nodoc
abstract class _$$LibraryErrorImplCopyWith<$Res> {
  factory _$$LibraryErrorImplCopyWith(
          _$LibraryErrorImpl value, $Res Function(_$LibraryErrorImpl) then) =
      __$$LibraryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LibraryErrorImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LibraryErrorImpl>
    implements _$$LibraryErrorImplCopyWith<$Res> {
  __$$LibraryErrorImplCopyWithImpl(
      _$LibraryErrorImpl _value, $Res Function(_$LibraryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LibraryErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LibraryErrorImpl extends LibraryError {
  const _$LibraryErrorImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'LibraryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryErrorImplCopyWith<_$LibraryErrorImpl> get copyWith =>
      __$$LibraryErrorImplCopyWithImpl<_$LibraryErrorImpl>(this, _$identity);
}

abstract class LibraryError extends LibraryState {
  const factory LibraryError({required final String message}) =
      _$LibraryErrorImpl;
  const LibraryError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$LibraryErrorImplCopyWith<_$LibraryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
