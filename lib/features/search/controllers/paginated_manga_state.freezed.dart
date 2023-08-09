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
abstract class _$$_LoadingCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$_Loading(
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

class _$_Loading extends _Loading {
  const _$_Loading({required this.page, this.hasMore = true}) : super._();

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
            other is _$_Loading &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

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
      _$_Loading;
  const _Loading._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore, List<SourceManga> mangas});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
    Object? mangas = null,
  }) {
    return _then(_$_Loaded(
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

class _$_Loaded extends _Loaded {
  const _$_Loaded(
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
            other is _$_Loaded &&
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
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

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
      required final List<SourceManga> mangas}) = _$_Loaded;
  const _Loaded._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  List<SourceManga> get mangas;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$_Empty(
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

class _$_Empty extends _Empty {
  const _$_Empty({required this.page, this.hasMore = false}) : super._();

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
            other is _$_Empty &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      __$$_EmptyCopyWithImpl<_$_Empty>(this, _$identity);

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
      _$_Empty;
  const _Empty._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore, String? message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
    Object? message = freezed,
  }) {
    return _then(_$_Error(
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

class _$_Error extends _Error {
  const _$_Error({required this.page, required this.hasMore, this.message})
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
            other is _$_Error &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

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
      final String? message}) = _$_Error;
  const _Error._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
