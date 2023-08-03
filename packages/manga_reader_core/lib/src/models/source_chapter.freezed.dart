// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourceChapter _$SourceChapterFromJson(Map<String, dynamic> json) {
  return _SourceChapter.fromJson(json);
}

/// @nodoc
mixin _$SourceChapter {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get dateUpload => throw _privateConstructorUsedError;
  double get chapterNumber => throw _privateConstructorUsedError;
  String? get scanlator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SourceChapterCopyWith<SourceChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceChapterCopyWith<$Res> {
  factory $SourceChapterCopyWith(
          SourceChapter value, $Res Function(SourceChapter) then) =
      _$SourceChapterCopyWithImpl<$Res, SourceChapter>;
  @useResult
  $Res call(
      {String url,
      String name,
      DateTime? dateUpload,
      double chapterNumber,
      String? scanlator});
}

/// @nodoc
class _$SourceChapterCopyWithImpl<$Res, $Val extends SourceChapter>
    implements $SourceChapterCopyWith<$Res> {
  _$SourceChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
    Object? dateUpload = freezed,
    Object? chapterNumber = null,
    Object? scanlator = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpload: freezed == dateUpload
          ? _value.dateUpload
          : dateUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as double,
      scanlator: freezed == scanlator
          ? _value.scanlator
          : scanlator // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourceChapterCopyWith<$Res>
    implements $SourceChapterCopyWith<$Res> {
  factory _$$_SourceChapterCopyWith(
          _$_SourceChapter value, $Res Function(_$_SourceChapter) then) =
      __$$_SourceChapterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String name,
      DateTime? dateUpload,
      double chapterNumber,
      String? scanlator});
}

/// @nodoc
class __$$_SourceChapterCopyWithImpl<$Res>
    extends _$SourceChapterCopyWithImpl<$Res, _$_SourceChapter>
    implements _$$_SourceChapterCopyWith<$Res> {
  __$$_SourceChapterCopyWithImpl(
      _$_SourceChapter _value, $Res Function(_$_SourceChapter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? name = null,
    Object? dateUpload = freezed,
    Object? chapterNumber = null,
    Object? scanlator = freezed,
  }) {
    return _then(_$_SourceChapter(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpload: freezed == dateUpload
          ? _value.dateUpload
          : dateUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      chapterNumber: null == chapterNumber
          ? _value.chapterNumber
          : chapterNumber // ignore: cast_nullable_to_non_nullable
              as double,
      scanlator: freezed == scanlator
          ? _value.scanlator
          : scanlator // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SourceChapter implements _SourceChapter {
  const _$_SourceChapter(
      {required this.url,
      required this.name,
      this.dateUpload,
      this.chapterNumber = -1.0,
      this.scanlator});

  factory _$_SourceChapter.fromJson(Map<String, dynamic> json) =>
      _$$_SourceChapterFromJson(json);

  @override
  final String url;
  @override
  final String name;
  @override
  final DateTime? dateUpload;
  @override
  @JsonKey()
  final double chapterNumber;
  @override
  final String? scanlator;

  @override
  String toString() {
    return 'SourceChapter(url: $url, name: $name, dateUpload: $dateUpload, chapterNumber: $chapterNumber, scanlator: $scanlator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceChapter &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateUpload, dateUpload) ||
                other.dateUpload == dateUpload) &&
            (identical(other.chapterNumber, chapterNumber) ||
                other.chapterNumber == chapterNumber) &&
            (identical(other.scanlator, scanlator) ||
                other.scanlator == scanlator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, name, dateUpload, chapterNumber, scanlator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceChapterCopyWith<_$_SourceChapter> get copyWith =>
      __$$_SourceChapterCopyWithImpl<_$_SourceChapter>(this, _$identity);
}

abstract class _SourceChapter implements SourceChapter {
  const factory _SourceChapter(
      {required final String url,
      required final String name,
      final DateTime? dateUpload,
      final double chapterNumber,
      final String? scanlator}) = _$_SourceChapter;

  factory _SourceChapter.fromJson(Map<String, dynamic> json) =
      _$_SourceChapter.fromJson;

  @override
  String get url;
  @override
  String get name;
  @override
  DateTime? get dateUpload;
  @override
  double get chapterNumber;
  @override
  String? get scanlator;
  @override
  @JsonKey(ignore: true)
  _$$_SourceChapterCopyWith<_$_SourceChapter> get copyWith =>
      throw _privateConstructorUsedError;
}
