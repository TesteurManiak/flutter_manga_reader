// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_manga_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedMangaState {
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool hasMore) loading,
    required TResult Function(int page, bool hasMore, List<SourceManga> mangas)
        loaded,
    required TResult Function(int page, bool hasMore) empty,
    required TResult Function(int page, bool hasMore, String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool hasMore)? loading,
    TResult? Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult? Function(int page, bool hasMore)? empty,
    TResult? Function(int page, bool hasMore, String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool hasMore)? loading,
    TResult Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult Function(int page, bool hasMore)? empty,
    TResult Function(int page, bool hasMore, String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedMangaStateCopyWith<PaginatedMangaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedMangaStateCopyWith<$Res> {
  factory $PaginatedMangaStateCopyWith(
          PaginatedMangaState value, $Res Function(PaginatedMangaState) then) =
      _$PaginatedMangaStateCopyWithImpl<$Res, PaginatedMangaState>;
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class _$PaginatedMangaStateCopyWithImpl<$Res, $Val extends PaginatedMangaState>
    implements $PaginatedMangaStateCopyWith<$Res> {
  _$PaginatedMangaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$LoadingImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl({required this.page, this.hasMore = true}) : super._();

  @override
  final int page;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'PaginatedMangaState.loading(page: $page, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool hasMore) loading,
    required TResult Function(int page, bool hasMore, List<SourceManga> mangas)
        loaded,
    required TResult Function(int page, bool hasMore) empty,
    required TResult Function(int page, bool hasMore, String? message) error,
  }) {
    return loading(page, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool hasMore)? loading,
    TResult? Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult? Function(int page, bool hasMore)? empty,
    TResult? Function(int page, bool hasMore, String? message)? error,
  }) {
    return loading?.call(page, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool hasMore)? loading,
    TResult Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult Function(int page, bool hasMore)? empty,
    TResult Function(int page, bool hasMore, String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(page, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PaginatedMangaState {
  const factory _Loading({required final int page, final bool hasMore}) =
      _$LoadingImpl;
  const _Loading._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore, List<SourceManga> mangas});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
    Object? mangas = null,
  }) {
    return _then(_$LoadedImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      mangas: null == mangas
          ? _value._mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<SourceManga>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl(
      {required this.page,
      required this.hasMore,
      required final List<SourceManga> mangas})
      : _mangas = mangas,
        super._();

  @override
  final int page;
  @override
  final bool hasMore;
  final List<SourceManga> _mangas;
  @override
  List<SourceManga> get mangas {
    if (_mangas is EqualUnmodifiableListView) return _mangas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangas);
  }

  @override
  String toString() {
    return 'PaginatedMangaState.loaded(page: $page, hasMore: $hasMore, mangas: $mangas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other._mangas, _mangas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, hasMore, const DeepCollectionEquality().hash(_mangas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool hasMore) loading,
    required TResult Function(int page, bool hasMore, List<SourceManga> mangas)
        loaded,
    required TResult Function(int page, bool hasMore) empty,
    required TResult Function(int page, bool hasMore, String? message) error,
  }) {
    return loaded(page, hasMore, mangas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool hasMore)? loading,
    TResult? Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult? Function(int page, bool hasMore)? empty,
    TResult? Function(int page, bool hasMore, String? message)? error,
  }) {
    return loaded?.call(page, hasMore, mangas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool hasMore)? loading,
    TResult Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult Function(int page, bool hasMore)? empty,
    TResult Function(int page, bool hasMore, String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(page, hasMore, mangas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends PaginatedMangaState {
  const factory _Loaded(
      {required final int page,
      required final bool hasMore,
      required final List<SourceManga> mangas}) = _$LoadedImpl;
  const _Loaded._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  List<SourceManga> get mangas;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$EmptyImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl({required this.page, this.hasMore = false}) : super._();

  @override
  final int page;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'PaginatedMangaState.empty(page: $page, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool hasMore) loading,
    required TResult Function(int page, bool hasMore, List<SourceManga> mangas)
        loaded,
    required TResult Function(int page, bool hasMore) empty,
    required TResult Function(int page, bool hasMore, String? message) error,
  }) {
    return empty(page, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool hasMore)? loading,
    TResult? Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult? Function(int page, bool hasMore)? empty,
    TResult? Function(int page, bool hasMore, String? message)? error,
  }) {
    return empty?.call(page, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool hasMore)? loading,
    TResult Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult Function(int page, bool hasMore)? empty,
    TResult Function(int page, bool hasMore, String? message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(page, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends PaginatedMangaState {
  const factory _Empty({required final int page, final bool hasMore}) =
      _$EmptyImpl;
  const _Empty._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore, String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.page, required this.hasMore, this.message})
      : super._();

  @override
  final int page;
  @override
  final bool hasMore;
  @override
  final String? message;

  @override
  String toString() {
    return 'PaginatedMangaState.error(page: $page, hasMore: $hasMore, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool hasMore) loading,
    required TResult Function(int page, bool hasMore, List<SourceManga> mangas)
        loaded,
    required TResult Function(int page, bool hasMore) empty,
    required TResult Function(int page, bool hasMore, String? message) error,
  }) {
    return error(page, hasMore, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool hasMore)? loading,
    TResult? Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult? Function(int page, bool hasMore)? empty,
    TResult? Function(int page, bool hasMore, String? message)? error,
  }) {
    return error?.call(page, hasMore, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool hasMore)? loading,
    TResult Function(int page, bool hasMore, List<SourceManga> mangas)? loaded,
    TResult Function(int page, bool hasMore)? empty,
    TResult Function(int page, bool hasMore, String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(page, hasMore, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends PaginatedMangaState {
  const factory _Error(
      {required final int page,
      required final bool hasMore,
      final String? message}) = _$ErrorImpl;
  const _Error._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
