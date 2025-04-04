// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  int get id => throw _privateConstructorUsedError;
  int get mangaId => throw _privateConstructorUsedError; // Source data
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get dateUpload => throw _privateConstructorUsedError;
  double get chapterNumber => throw _privateConstructorUsedError;
  String? get scanlator => throw _privateConstructorUsedError; // Model data
  bool get read => throw _privateConstructorUsedError;
  bool get downloaded => throw _privateConstructorUsedError;
  bool get bookmark => throw _privateConstructorUsedError;
  int get lastPageRead => throw _privateConstructorUsedError;
  DateTime? get dateFetch => throw _privateConstructorUsedError;
  DateTime? get lastModified => throw _privateConstructorUsedError;

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {int id,
      int mangaId,
      String url,
      String name,
      DateTime? dateUpload,
      double chapterNumber,
      String? scanlator,
      bool read,
      bool downloaded,
      bool bookmark,
      int lastPageRead,
      DateTime? dateFetch,
      DateTime? lastModified});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mangaId = null,
    Object? url = null,
    Object? name = null,
    Object? dateUpload = freezed,
    Object? chapterNumber = null,
    Object? scanlator = freezed,
    Object? read = null,
    Object? downloaded = null,
    Object? bookmark = null,
    Object? lastPageRead = null,
    Object? dateFetch = freezed,
    Object? lastModified = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as int,
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
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      downloaded: null == downloaded
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPageRead: null == lastPageRead
          ? _value.lastPageRead
          : lastPageRead // ignore: cast_nullable_to_non_nullable
              as int,
      dateFetch: freezed == dateFetch
          ? _value.dateFetch
          : dateFetch // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int mangaId,
      String url,
      String name,
      DateTime? dateUpload,
      double chapterNumber,
      String? scanlator,
      bool read,
      bool downloaded,
      bool bookmark,
      int lastPageRead,
      DateTime? dateFetch,
      DateTime? lastModified});
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mangaId = null,
    Object? url = null,
    Object? name = null,
    Object? dateUpload = freezed,
    Object? chapterNumber = null,
    Object? scanlator = freezed,
    Object? read = null,
    Object? downloaded = null,
    Object? bookmark = null,
    Object? lastPageRead = null,
    Object? dateFetch = freezed,
    Object? lastModified = freezed,
  }) {
    return _then(_$ChapterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mangaId: null == mangaId
          ? _value.mangaId
          : mangaId // ignore: cast_nullable_to_non_nullable
              as int,
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
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      downloaded: null == downloaded
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPageRead: null == lastPageRead
          ? _value.lastPageRead
          : lastPageRead // ignore: cast_nullable_to_non_nullable
              as int,
      dateFetch: freezed == dateFetch
          ? _value.dateFetch
          : dateFetch // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl extends _Chapter {
  const _$ChapterImpl(
      {required this.id,
      required this.mangaId,
      required this.url,
      required this.name,
      this.dateUpload,
      this.chapterNumber = 0.0,
      this.scanlator,
      this.read = false,
      this.downloaded = false,
      this.bookmark = false,
      this.lastPageRead = 0,
      this.dateFetch,
      this.lastModified})
      : super._();

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  final int id;
  @override
  final int mangaId;
// Source data
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
// Model data
  @override
  @JsonKey()
  final bool read;
  @override
  @JsonKey()
  final bool downloaded;
  @override
  @JsonKey()
  final bool bookmark;
  @override
  @JsonKey()
  final int lastPageRead;
  @override
  final DateTime? dateFetch;
  @override
  final DateTime? lastModified;

  @override
  String toString() {
    return 'Chapter(id: $id, mangaId: $mangaId, url: $url, name: $name, dateUpload: $dateUpload, chapterNumber: $chapterNumber, scanlator: $scanlator, read: $read, downloaded: $downloaded, bookmark: $bookmark, lastPageRead: $lastPageRead, dateFetch: $dateFetch, lastModified: $lastModified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mangaId, mangaId) || other.mangaId == mangaId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateUpload, dateUpload) ||
                other.dateUpload == dateUpload) &&
            (identical(other.chapterNumber, chapterNumber) ||
                other.chapterNumber == chapterNumber) &&
            (identical(other.scanlator, scanlator) ||
                other.scanlator == scanlator) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.downloaded, downloaded) ||
                other.downloaded == downloaded) &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark) &&
            (identical(other.lastPageRead, lastPageRead) ||
                other.lastPageRead == lastPageRead) &&
            (identical(other.dateFetch, dateFetch) ||
                other.dateFetch == dateFetch) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mangaId,
      url,
      name,
      dateUpload,
      chapterNumber,
      scanlator,
      read,
      downloaded,
      bookmark,
      lastPageRead,
      dateFetch,
      lastModified);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter extends Chapter {
  const factory _Chapter(
      {required final int id,
      required final int mangaId,
      required final String url,
      required final String name,
      final DateTime? dateUpload,
      final double chapterNumber,
      final String? scanlator,
      final bool read,
      final bool downloaded,
      final bool bookmark,
      final int lastPageRead,
      final DateTime? dateFetch,
      final DateTime? lastModified}) = _$ChapterImpl;
  const _Chapter._() : super._();

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  int get id;
  @override
  int get mangaId; // Source data
  @override
  String get url;
  @override
  String get name;
  @override
  DateTime? get dateUpload;
  @override
  double get chapterNumber;
  @override
  String? get scanlator; // Model data
  @override
  bool get read;
  @override
  bool get downloaded;
  @override
  bool get bookmark;
  @override
  int get lastPageRead;
  @override
  DateTime? get dateFetch;
  @override
  DateTime? get lastModified;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
