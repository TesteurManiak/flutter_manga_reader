// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_download_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapterDownloadTask {
  Chapter get chapter => throw _privateConstructorUsedError;
  List<ChapterPage> get pages => throw _privateConstructorUsedError;
  DownloadTaskStatus get status => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterDownloadTaskCopyWith<ChapterDownloadTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDownloadTaskCopyWith<$Res> {
  factory $ChapterDownloadTaskCopyWith(
          ChapterDownloadTask value, $Res Function(ChapterDownloadTask) then) =
      _$ChapterDownloadTaskCopyWithImpl<$Res, ChapterDownloadTask>;
  @useResult
  $Res call(
      {Chapter chapter,
      List<ChapterPage> pages,
      DownloadTaskStatus status,
      double progress,
      Map<String, String>? headers});

  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ChapterDownloadTaskCopyWithImpl<$Res, $Val extends ChapterDownloadTask>
    implements $ChapterDownloadTaskCopyWith<$Res> {
  _$ChapterDownloadTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? pages = null,
    Object? status = null,
    Object? progress = null,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<ChapterPage>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<$Res> get chapter {
    return $ChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterDownloadTaskImplCopyWith<$Res>
    implements $ChapterDownloadTaskCopyWith<$Res> {
  factory _$$ChapterDownloadTaskImplCopyWith(_$ChapterDownloadTaskImpl value,
          $Res Function(_$ChapterDownloadTaskImpl) then) =
      __$$ChapterDownloadTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Chapter chapter,
      List<ChapterPage> pages,
      DownloadTaskStatus status,
      double progress,
      Map<String, String>? headers});

  @override
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ChapterDownloadTaskImplCopyWithImpl<$Res>
    extends _$ChapterDownloadTaskCopyWithImpl<$Res, _$ChapterDownloadTaskImpl>
    implements _$$ChapterDownloadTaskImplCopyWith<$Res> {
  __$$ChapterDownloadTaskImplCopyWithImpl(_$ChapterDownloadTaskImpl _value,
      $Res Function(_$ChapterDownloadTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? pages = null,
    Object? status = null,
    Object? progress = null,
    Object? headers = freezed,
  }) {
    return _then(_$ChapterDownloadTaskImpl(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<ChapterPage>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$ChapterDownloadTaskImpl extends _ChapterDownloadTask {
  const _$ChapterDownloadTaskImpl(
      {required this.chapter,
      required final List<ChapterPage> pages,
      this.status = DownloadTaskStatus.pending,
      this.progress = 0,
      final Map<String, String>? headers})
      : _pages = pages,
        _headers = headers,
        super._();

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
  @JsonKey()
  final DownloadTaskStatus status;
  @override
  @JsonKey()
  final double progress;
  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ChapterDownloadTask(chapter: $chapter, pages: $pages, status: $status, progress: $progress, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterDownloadTaskImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chapter,
      const DeepCollectionEquality().hash(_pages),
      status,
      progress,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterDownloadTaskImplCopyWith<_$ChapterDownloadTaskImpl> get copyWith =>
      __$$ChapterDownloadTaskImplCopyWithImpl<_$ChapterDownloadTaskImpl>(
          this, _$identity);
}

abstract class _ChapterDownloadTask extends ChapterDownloadTask {
  const factory _ChapterDownloadTask(
      {required final Chapter chapter,
      required final List<ChapterPage> pages,
      final DownloadTaskStatus status,
      final double progress,
      final Map<String, String>? headers}) = _$ChapterDownloadTaskImpl;
  const _ChapterDownloadTask._() : super._();

  @override
  Chapter get chapter;
  @override
  List<ChapterPage> get pages;
  @override
  DownloadTaskStatus get status;
  @override
  double get progress;
  @override
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$ChapterDownloadTaskImplCopyWith<_$ChapterDownloadTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
