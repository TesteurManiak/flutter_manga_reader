// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_viewer_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapterViewerState {}

/// @nodoc
abstract class $ChapterViewerStateCopyWith<$Res> {
  factory $ChapterViewerStateCopyWith(
          ChapterViewerState value, $Res Function(ChapterViewerState) then) =
      _$ChapterViewerStateCopyWithImpl<$Res, ChapterViewerState>;
}

/// @nodoc
class _$ChapterViewerStateCopyWithImpl<$Res, $Val extends ChapterViewerState>
    implements $ChapterViewerStateCopyWith<$Res> {
  _$ChapterViewerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChapterViewerLoadingImplCopyWith<$Res> {
  factory _$$ChapterViewerLoadingImplCopyWith(_$ChapterViewerLoadingImpl value,
          $Res Function(_$ChapterViewerLoadingImpl) then) =
      __$$ChapterViewerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChapterViewerLoadingImplCopyWithImpl<$Res>
    extends _$ChapterViewerStateCopyWithImpl<$Res, _$ChapterViewerLoadingImpl>
    implements _$$ChapterViewerLoadingImplCopyWith<$Res> {
  __$$ChapterViewerLoadingImplCopyWithImpl(_$ChapterViewerLoadingImpl _value,
      $Res Function(_$ChapterViewerLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChapterViewerLoadingImpl implements ChapterViewerLoading {
  const _$ChapterViewerLoadingImpl();

  @override
  String toString() {
    return 'ChapterViewerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterViewerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ChapterViewerLoading implements ChapterViewerState {
  const factory ChapterViewerLoading() = _$ChapterViewerLoadingImpl;
}

/// @nodoc
abstract class _$$ChapterViewerLoadedImplCopyWith<$Res> {
  factory _$$ChapterViewerLoadedImplCopyWith(_$ChapterViewerLoadedImpl value,
          $Res Function(_$ChapterViewerLoadedImpl) then) =
      __$$ChapterViewerLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Chapter chapter, List<ChapterPage> pages});

  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ChapterViewerLoadedImplCopyWithImpl<$Res>
    extends _$ChapterViewerStateCopyWithImpl<$Res, _$ChapterViewerLoadedImpl>
    implements _$$ChapterViewerLoadedImplCopyWith<$Res> {
  __$$ChapterViewerLoadedImplCopyWithImpl(_$ChapterViewerLoadedImpl _value,
      $Res Function(_$ChapterViewerLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? pages = null,
  }) {
    return _then(_$ChapterViewerLoadedImpl(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<ChapterPage>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<$Res> get chapter {
    return $ChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value));
    });
  }
}

/// @nodoc

class _$ChapterViewerLoadedImpl implements ChapterViewerLoaded {
  const _$ChapterViewerLoadedImpl(
      {required this.chapter, required final List<ChapterPage> pages})
      : _pages = pages;

  @override
  final Chapter chapter;
  final List<ChapterPage> _pages;
  @override
  List<ChapterPage> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'ChapterViewerState.loaded(chapter: $chapter, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterViewerLoadedImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chapter, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterViewerLoadedImplCopyWith<_$ChapterViewerLoadedImpl> get copyWith =>
      __$$ChapterViewerLoadedImplCopyWithImpl<_$ChapterViewerLoadedImpl>(
          this, _$identity);
}

abstract class ChapterViewerLoaded implements ChapterViewerState {
  const factory ChapterViewerLoaded(
      {required final Chapter chapter,
      required final List<ChapterPage> pages}) = _$ChapterViewerLoadedImpl;

  Chapter get chapter;
  List<ChapterPage> get pages;
  @JsonKey(ignore: true)
  _$$ChapterViewerLoadedImplCopyWith<_$ChapterViewerLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChapterViewerErrorImplCopyWith<$Res> {
  factory _$$ChapterViewerErrorImplCopyWith(_$ChapterViewerErrorImpl value,
          $Res Function(_$ChapterViewerErrorImpl) then) =
      __$$ChapterViewerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ChapterViewerErrorImplCopyWithImpl<$Res>
    extends _$ChapterViewerStateCopyWithImpl<$Res, _$ChapterViewerErrorImpl>
    implements _$$ChapterViewerErrorImplCopyWith<$Res> {
  __$$ChapterViewerErrorImplCopyWithImpl(_$ChapterViewerErrorImpl _value,
      $Res Function(_$ChapterViewerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ChapterViewerErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChapterViewerErrorImpl implements ChapterViewerError {
  const _$ChapterViewerErrorImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ChapterViewerState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterViewerErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterViewerErrorImplCopyWith<_$ChapterViewerErrorImpl> get copyWith =>
      __$$ChapterViewerErrorImplCopyWithImpl<_$ChapterViewerErrorImpl>(
          this, _$identity);
}

abstract class ChapterViewerError implements ChapterViewerState {
  const factory ChapterViewerError({final String? error}) =
      _$ChapterViewerErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$ChapterViewerErrorImplCopyWith<_$ChapterViewerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
