// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AtHome _$AtHomeFromJson(Map<String, dynamic> json) {
  return _AtHome.fromJson(json);
}

/// @nodoc
mixin _$AtHome {
  String get baseUrl => throw _privateConstructorUsedError;
  AtHomeChapter get chapter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AtHomeCopyWith<AtHome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtHomeCopyWith<$Res> {
  factory $AtHomeCopyWith(AtHome value, $Res Function(AtHome) then) =
      _$AtHomeCopyWithImpl<$Res, AtHome>;
  @useResult
  $Res call({String baseUrl, AtHomeChapter chapter});

  $AtHomeChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$AtHomeCopyWithImpl<$Res, $Val extends AtHome>
    implements $AtHomeCopyWith<$Res> {
  _$AtHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? chapter = null,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as AtHomeChapter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AtHomeChapterCopyWith<$Res> get chapter {
    return $AtHomeChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AtHomeCopyWith<$Res> implements $AtHomeCopyWith<$Res> {
  factory _$$_AtHomeCopyWith(_$_AtHome value, $Res Function(_$_AtHome) then) =
      __$$_AtHomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseUrl, AtHomeChapter chapter});

  @override
  $AtHomeChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$_AtHomeCopyWithImpl<$Res>
    extends _$AtHomeCopyWithImpl<$Res, _$_AtHome>
    implements _$$_AtHomeCopyWith<$Res> {
  __$$_AtHomeCopyWithImpl(_$_AtHome _value, $Res Function(_$_AtHome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? chapter = null,
  }) {
    return _then(_$_AtHome(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as AtHomeChapter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AtHome implements _AtHome {
  const _$_AtHome({required this.baseUrl, required this.chapter});

  factory _$_AtHome.fromJson(Map<String, dynamic> json) =>
      _$$_AtHomeFromJson(json);

  @override
  final String baseUrl;
  @override
  final AtHomeChapter chapter;

  @override
  String toString() {
    return 'AtHome(baseUrl: $baseUrl, chapter: $chapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtHome &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.chapter, chapter) || other.chapter == chapter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseUrl, chapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtHomeCopyWith<_$_AtHome> get copyWith =>
      __$$_AtHomeCopyWithImpl<_$_AtHome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtHomeToJson(
      this,
    );
  }
}

abstract class _AtHome implements AtHome {
  const factory _AtHome(
      {required final String baseUrl,
      required final AtHomeChapter chapter}) = _$_AtHome;

  factory _AtHome.fromJson(Map<String, dynamic> json) = _$_AtHome.fromJson;

  @override
  String get baseUrl;
  @override
  AtHomeChapter get chapter;
  @override
  @JsonKey(ignore: true)
  _$$_AtHomeCopyWith<_$_AtHome> get copyWith =>
      throw _privateConstructorUsedError;
}

AtHomeChapter _$AtHomeChapterFromJson(Map<String, dynamic> json) {
  return _AtHomeChapter.fromJson(json);
}

/// @nodoc
mixin _$AtHomeChapter {
  String get hash => throw _privateConstructorUsedError;
  List<String> get data => throw _privateConstructorUsedError;
  List<String> get dataSaver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AtHomeChapterCopyWith<AtHomeChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtHomeChapterCopyWith<$Res> {
  factory $AtHomeChapterCopyWith(
          AtHomeChapter value, $Res Function(AtHomeChapter) then) =
      _$AtHomeChapterCopyWithImpl<$Res, AtHomeChapter>;
  @useResult
  $Res call({String hash, List<String> data, List<String> dataSaver});
}

/// @nodoc
class _$AtHomeChapterCopyWithImpl<$Res, $Val extends AtHomeChapter>
    implements $AtHomeChapterCopyWith<$Res> {
  _$AtHomeChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
    Object? dataSaver = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dataSaver: null == dataSaver
          ? _value.dataSaver
          : dataSaver // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AtHomeChapterCopyWith<$Res>
    implements $AtHomeChapterCopyWith<$Res> {
  factory _$$_AtHomeChapterCopyWith(
          _$_AtHomeChapter value, $Res Function(_$_AtHomeChapter) then) =
      __$$_AtHomeChapterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash, List<String> data, List<String> dataSaver});
}

/// @nodoc
class __$$_AtHomeChapterCopyWithImpl<$Res>
    extends _$AtHomeChapterCopyWithImpl<$Res, _$_AtHomeChapter>
    implements _$$_AtHomeChapterCopyWith<$Res> {
  __$$_AtHomeChapterCopyWithImpl(
      _$_AtHomeChapter _value, $Res Function(_$_AtHomeChapter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
    Object? dataSaver = null,
  }) {
    return _then(_$_AtHomeChapter(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dataSaver: null == dataSaver
          ? _value._dataSaver
          : dataSaver // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AtHomeChapter implements _AtHomeChapter {
  const _$_AtHomeChapter(
      {required this.hash,
      required final List<String> data,
      required final List<String> dataSaver})
      : _data = data,
        _dataSaver = dataSaver;

  factory _$_AtHomeChapter.fromJson(Map<String, dynamic> json) =>
      _$$_AtHomeChapterFromJson(json);

  @override
  final String hash;
  final List<String> _data;
  @override
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<String> _dataSaver;
  @override
  List<String> get dataSaver {
    if (_dataSaver is EqualUnmodifiableListView) return _dataSaver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataSaver);
  }

  @override
  String toString() {
    return 'AtHomeChapter(hash: $hash, data: $data, dataSaver: $dataSaver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtHomeChapter &&
            (identical(other.hash, hash) || other.hash == hash) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._dataSaver, _dataSaver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hash,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_dataSaver));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtHomeChapterCopyWith<_$_AtHomeChapter> get copyWith =>
      __$$_AtHomeChapterCopyWithImpl<_$_AtHomeChapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AtHomeChapterToJson(
      this,
    );
  }
}

abstract class _AtHomeChapter implements AtHomeChapter {
  const factory _AtHomeChapter(
      {required final String hash,
      required final List<String> data,
      required final List<String> dataSaver}) = _$_AtHomeChapter;

  factory _AtHomeChapter.fromJson(Map<String, dynamic> json) =
      _$_AtHomeChapter.fromJson;

  @override
  String get hash;
  @override
  List<String> get data;
  @override
  List<String> get dataSaver;
  @override
  @JsonKey(ignore: true)
  _$$_AtHomeChapterCopyWith<_$_AtHomeChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageReport {
  String get url => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  int? get bytes => throw _privateConstructorUsedError;
  bool get cached => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageReportCopyWith<ImageReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageReportCopyWith<$Res> {
  factory $ImageReportCopyWith(
          ImageReport value, $Res Function(ImageReport) then) =
      _$ImageReportCopyWithImpl<$Res, ImageReport>;
  @useResult
  $Res call({String url, bool success, int? bytes, bool cached, int duration});
}

/// @nodoc
class _$ImageReportCopyWithImpl<$Res, $Val extends ImageReport>
    implements $ImageReportCopyWith<$Res> {
  _$ImageReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? success = null,
    Object? bytes = freezed,
    Object? cached = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int?,
      cached: null == cached
          ? _value.cached
          : cached // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageReportCopyWith<$Res>
    implements $ImageReportCopyWith<$Res> {
  factory _$$_ImageReportCopyWith(
          _$_ImageReport value, $Res Function(_$_ImageReport) then) =
      __$$_ImageReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, bool success, int? bytes, bool cached, int duration});
}

/// @nodoc
class __$$_ImageReportCopyWithImpl<$Res>
    extends _$ImageReportCopyWithImpl<$Res, _$_ImageReport>
    implements _$$_ImageReportCopyWith<$Res> {
  __$$_ImageReportCopyWithImpl(
      _$_ImageReport _value, $Res Function(_$_ImageReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? success = null,
    Object? bytes = freezed,
    Object? cached = null,
    Object? duration = null,
  }) {
    return _then(_$_ImageReport(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int?,
      cached: null == cached
          ? _value.cached
          : cached // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageReport implements _ImageReport {
  const _$_ImageReport(
      {required this.url,
      required this.success,
      this.bytes,
      required this.cached,
      required this.duration});

  @override
  final String url;
  @override
  final bool success;
  @override
  final int? bytes;
  @override
  final bool cached;
  @override
  final int duration;

  @override
  String toString() {
    return 'ImageReport(url: $url, success: $success, bytes: $bytes, cached: $cached, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageReport &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.cached, cached) || other.cached == cached) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, url, success, bytes, cached, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageReportCopyWith<_$_ImageReport> get copyWith =>
      __$$_ImageReportCopyWithImpl<_$_ImageReport>(this, _$identity);
}

abstract class _ImageReport implements ImageReport {
  const factory _ImageReport(
      {required final String url,
      required final bool success,
      final int? bytes,
      required final bool cached,
      required final int duration}) = _$_ImageReport;

  @override
  String get url;
  @override
  bool get success;
  @override
  int? get bytes;
  @override
  bool get cached;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_ImageReportCopyWith<_$_ImageReport> get copyWith =>
      throw _privateConstructorUsedError;
}
