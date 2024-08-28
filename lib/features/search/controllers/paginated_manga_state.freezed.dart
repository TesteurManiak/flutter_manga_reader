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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedMangaState {
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$PaginatedMangaLoadingImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$PaginatedMangaLoadingImplCopyWith(
          _$PaginatedMangaLoadingImpl value,
          $Res Function(_$PaginatedMangaLoadingImpl) then) =
      __$$PaginatedMangaLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class __$$PaginatedMangaLoadingImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$PaginatedMangaLoadingImpl>
    implements _$$PaginatedMangaLoadingImplCopyWith<$Res> {
  __$$PaginatedMangaLoadingImplCopyWithImpl(_$PaginatedMangaLoadingImpl _value,
      $Res Function(_$PaginatedMangaLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$PaginatedMangaLoadingImpl(
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

class _$PaginatedMangaLoadingImpl extends PaginatedMangaLoading {
  const _$PaginatedMangaLoadingImpl({required this.page, this.hasMore = true})
      : super._();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedMangaLoadingImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedMangaLoadingImplCopyWith<_$PaginatedMangaLoadingImpl>
      get copyWith => __$$PaginatedMangaLoadingImplCopyWithImpl<
          _$PaginatedMangaLoadingImpl>(this, _$identity);
}

abstract class PaginatedMangaLoading extends PaginatedMangaState {
  const factory PaginatedMangaLoading(
      {required final int page,
      final bool hasMore}) = _$PaginatedMangaLoadingImpl;
  const PaginatedMangaLoading._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedMangaLoadingImplCopyWith<_$PaginatedMangaLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedMangaLoadedImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$PaginatedMangaLoadedImplCopyWith(_$PaginatedMangaLoadedImpl value,
          $Res Function(_$PaginatedMangaLoadedImpl) then) =
      __$$PaginatedMangaLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore, List<SourceManga> mangas});
}

/// @nodoc
class __$$PaginatedMangaLoadedImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$PaginatedMangaLoadedImpl>
    implements _$$PaginatedMangaLoadedImplCopyWith<$Res> {
  __$$PaginatedMangaLoadedImplCopyWithImpl(_$PaginatedMangaLoadedImpl _value,
      $Res Function(_$PaginatedMangaLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
    Object? mangas = null,
  }) {
    return _then(_$PaginatedMangaLoadedImpl(
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

class _$PaginatedMangaLoadedImpl extends PaginatedMangaLoaded {
  const _$PaginatedMangaLoadedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedMangaLoadedImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other._mangas, _mangas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, hasMore, const DeepCollectionEquality().hash(_mangas));

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedMangaLoadedImplCopyWith<_$PaginatedMangaLoadedImpl>
      get copyWith =>
          __$$PaginatedMangaLoadedImplCopyWithImpl<_$PaginatedMangaLoadedImpl>(
              this, _$identity);
}

abstract class PaginatedMangaLoaded extends PaginatedMangaState {
  const factory PaginatedMangaLoaded(
      {required final int page,
      required final bool hasMore,
      required final List<SourceManga> mangas}) = _$PaginatedMangaLoadedImpl;
  const PaginatedMangaLoaded._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  List<SourceManga> get mangas;

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedMangaLoadedImplCopyWith<_$PaginatedMangaLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedMangaEmptyImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$PaginatedMangaEmptyImplCopyWith(_$PaginatedMangaEmptyImpl value,
          $Res Function(_$PaginatedMangaEmptyImpl) then) =
      __$$PaginatedMangaEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore});
}

/// @nodoc
class __$$PaginatedMangaEmptyImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$PaginatedMangaEmptyImpl>
    implements _$$PaginatedMangaEmptyImplCopyWith<$Res> {
  __$$PaginatedMangaEmptyImplCopyWithImpl(_$PaginatedMangaEmptyImpl _value,
      $Res Function(_$PaginatedMangaEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
  }) {
    return _then(_$PaginatedMangaEmptyImpl(
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

class _$PaginatedMangaEmptyImpl extends PaginatedMangaEmpty {
  const _$PaginatedMangaEmptyImpl({required this.page, this.hasMore = false})
      : super._();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedMangaEmptyImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedMangaEmptyImplCopyWith<_$PaginatedMangaEmptyImpl> get copyWith =>
      __$$PaginatedMangaEmptyImplCopyWithImpl<_$PaginatedMangaEmptyImpl>(
          this, _$identity);
}

abstract class PaginatedMangaEmpty extends PaginatedMangaState {
  const factory PaginatedMangaEmpty(
      {required final int page,
      final bool hasMore}) = _$PaginatedMangaEmptyImpl;
  const PaginatedMangaEmpty._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedMangaEmptyImplCopyWith<_$PaginatedMangaEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedMangaErrorImplCopyWith<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  factory _$$PaginatedMangaErrorImplCopyWith(_$PaginatedMangaErrorImpl value,
          $Res Function(_$PaginatedMangaErrorImpl) then) =
      __$$PaginatedMangaErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, bool hasMore, String? message});
}

/// @nodoc
class __$$PaginatedMangaErrorImplCopyWithImpl<$Res>
    extends _$PaginatedMangaStateCopyWithImpl<$Res, _$PaginatedMangaErrorImpl>
    implements _$$PaginatedMangaErrorImplCopyWith<$Res> {
  __$$PaginatedMangaErrorImplCopyWithImpl(_$PaginatedMangaErrorImpl _value,
      $Res Function(_$PaginatedMangaErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? hasMore = null,
    Object? message = freezed,
  }) {
    return _then(_$PaginatedMangaErrorImpl(
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

class _$PaginatedMangaErrorImpl extends PaginatedMangaError {
  const _$PaginatedMangaErrorImpl(
      {required this.page, required this.hasMore, this.message})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedMangaErrorImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, hasMore, message);

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedMangaErrorImplCopyWith<_$PaginatedMangaErrorImpl> get copyWith =>
      __$$PaginatedMangaErrorImplCopyWithImpl<_$PaginatedMangaErrorImpl>(
          this, _$identity);
}

abstract class PaginatedMangaError extends PaginatedMangaState {
  const factory PaginatedMangaError(
      {required final int page,
      required final bool hasMore,
      final String? message}) = _$PaginatedMangaErrorImpl;
  const PaginatedMangaError._() : super._();

  @override
  int get page;
  @override
  bool get hasMore;
  String? get message;

  /// Create a copy of PaginatedMangaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedMangaErrorImplCopyWith<_$PaginatedMangaErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
