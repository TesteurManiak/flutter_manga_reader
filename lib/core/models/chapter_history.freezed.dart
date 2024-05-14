// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapterHistory {
  Manga get manga => throw _privateConstructorUsedError;
  Chapter get chapter => throw _privateConstructorUsedError;
  DateTime get readAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterHistoryCopyWith<ChapterHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterHistoryCopyWith<$Res> {
  factory $ChapterHistoryCopyWith(
          ChapterHistory value, $Res Function(ChapterHistory) then) =
      _$ChapterHistoryCopyWithImpl<$Res, ChapterHistory>;
  @useResult
  $Res call({Manga manga, Chapter chapter, DateTime readAt});

  $MangaCopyWith<$Res> get manga;
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ChapterHistoryCopyWithImpl<$Res, $Val extends ChapterHistory>
    implements $ChapterHistoryCopyWith<$Res> {
  _$ChapterHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manga = null,
    Object? chapter = null,
    Object? readAt = null,
  }) {
    return _then(_value.copyWith(
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as Manga,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaCopyWith<$Res> get manga {
    return $MangaCopyWith<$Res>(_value.manga, (value) {
      return _then(_value.copyWith(manga: value) as $Val);
    });
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
abstract class _$$ChapterHistoryImplCopyWith<$Res>
    implements $ChapterHistoryCopyWith<$Res> {
  factory _$$ChapterHistoryImplCopyWith(_$ChapterHistoryImpl value,
          $Res Function(_$ChapterHistoryImpl) then) =
      __$$ChapterHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Manga manga, Chapter chapter, DateTime readAt});

  @override
  $MangaCopyWith<$Res> get manga;
  @override
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ChapterHistoryImplCopyWithImpl<$Res>
    extends _$ChapterHistoryCopyWithImpl<$Res, _$ChapterHistoryImpl>
    implements _$$ChapterHistoryImplCopyWith<$Res> {
  __$$ChapterHistoryImplCopyWithImpl(
      _$ChapterHistoryImpl _value, $Res Function(_$ChapterHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manga = null,
    Object? chapter = null,
    Object? readAt = null,
  }) {
    return _then(_$ChapterHistoryImpl(
      manga: null == manga
          ? _value.manga
          : manga // ignore: cast_nullable_to_non_nullable
              as Manga,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChapterHistoryImpl implements _ChapterHistory {
  const _$ChapterHistoryImpl(
      {required this.manga, required this.chapter, required this.readAt});

  @override
  final Manga manga;
  @override
  final Chapter chapter;
  @override
  final DateTime readAt;

  @override
  String toString() {
    return 'ChapterHistory(manga: $manga, chapter: $chapter, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterHistoryImpl &&
            (identical(other.manga, manga) || other.manga == manga) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manga, chapter, readAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterHistoryImplCopyWith<_$ChapterHistoryImpl> get copyWith =>
      __$$ChapterHistoryImplCopyWithImpl<_$ChapterHistoryImpl>(
          this, _$identity);
}

abstract class _ChapterHistory implements ChapterHistory {
  const factory _ChapterHistory(
      {required final Manga manga,
      required final Chapter chapter,
      required final DateTime readAt}) = _$ChapterHistoryImpl;

  @override
  Manga get manga;
  @override
  Chapter get chapter;
  @override
  DateTime get readAt;
  @override
  @JsonKey(ignore: true)
  _$$ChapterHistoryImplCopyWith<_$ChapterHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
