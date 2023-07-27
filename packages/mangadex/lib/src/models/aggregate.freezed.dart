// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AggregateResponse _$AggregateResponseFromJson(Map<String, dynamic> json) {
  return _AggregateResponse.fromJson(json);
}

/// @nodoc
mixin _$AggregateResponse {
  String get result => throw _privateConstructorUsedError;
  Map<String, AggregateVolume>? get volumes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregateResponseCopyWith<AggregateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateResponseCopyWith<$Res> {
  factory $AggregateResponseCopyWith(
          AggregateResponse value, $Res Function(AggregateResponse) then) =
      _$AggregateResponseCopyWithImpl<$Res, AggregateResponse>;
  @useResult
  $Res call({String result, Map<String, AggregateVolume>? volumes});
}

/// @nodoc
class _$AggregateResponseCopyWithImpl<$Res, $Val extends AggregateResponse>
    implements $AggregateResponseCopyWith<$Res> {
  _$AggregateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? volumes = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      volumes: freezed == volumes
          ? _value.volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as Map<String, AggregateVolume>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AggregateResponseCopyWith<$Res>
    implements $AggregateResponseCopyWith<$Res> {
  factory _$$_AggregateResponseCopyWith(_$_AggregateResponse value,
          $Res Function(_$_AggregateResponse) then) =
      __$$_AggregateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result, Map<String, AggregateVolume>? volumes});
}

/// @nodoc
class __$$_AggregateResponseCopyWithImpl<$Res>
    extends _$AggregateResponseCopyWithImpl<$Res, _$_AggregateResponse>
    implements _$$_AggregateResponseCopyWith<$Res> {
  __$$_AggregateResponseCopyWithImpl(
      _$_AggregateResponse _value, $Res Function(_$_AggregateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? volumes = freezed,
  }) {
    return _then(_$_AggregateResponse(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      volumes: freezed == volumes
          ? _value._volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as Map<String, AggregateVolume>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AggregateResponse implements _AggregateResponse {
  const _$_AggregateResponse(
      {required this.result, final Map<String, AggregateVolume>? volumes})
      : _volumes = volumes;

  factory _$_AggregateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AggregateResponseFromJson(json);

  @override
  final String result;
  final Map<String, AggregateVolume>? _volumes;
  @override
  Map<String, AggregateVolume>? get volumes {
    final value = _volumes;
    if (value == null) return null;
    if (_volumes is EqualUnmodifiableMapView) return _volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AggregateResponse(result: $result, volumes: $volumes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AggregateResponse &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._volumes, _volumes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_volumes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AggregateResponseCopyWith<_$_AggregateResponse> get copyWith =>
      __$$_AggregateResponseCopyWithImpl<_$_AggregateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AggregateResponseToJson(
      this,
    );
  }
}

abstract class _AggregateResponse implements AggregateResponse {
  const factory _AggregateResponse(
      {required final String result,
      final Map<String, AggregateVolume>? volumes}) = _$_AggregateResponse;

  factory _AggregateResponse.fromJson(Map<String, dynamic> json) =
      _$_AggregateResponse.fromJson;

  @override
  String get result;
  @override
  Map<String, AggregateVolume>? get volumes;
  @override
  @JsonKey(ignore: true)
  _$$_AggregateResponseCopyWith<_$_AggregateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AggregateVolume _$AggregateVolumeFromJson(Map<String, dynamic> json) {
  return _AggregateVolume.fromJson(json);
}

/// @nodoc
mixin _$AggregateVolume {
  String get volume => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  Map<String, AggregateChapter> get chapters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregateVolumeCopyWith<AggregateVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateVolumeCopyWith<$Res> {
  factory $AggregateVolumeCopyWith(
          AggregateVolume value, $Res Function(AggregateVolume) then) =
      _$AggregateVolumeCopyWithImpl<$Res, AggregateVolume>;
  @useResult
  $Res call(
      {String volume, String count, Map<String, AggregateChapter> chapters});
}

/// @nodoc
class _$AggregateVolumeCopyWithImpl<$Res, $Val extends AggregateVolume>
    implements $AggregateVolumeCopyWith<$Res> {
  _$AggregateVolumeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? count = null,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as Map<String, AggregateChapter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AggregateVolumeCopyWith<$Res>
    implements $AggregateVolumeCopyWith<$Res> {
  factory _$$_AggregateVolumeCopyWith(
          _$_AggregateVolume value, $Res Function(_$_AggregateVolume) then) =
      __$$_AggregateVolumeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String volume, String count, Map<String, AggregateChapter> chapters});
}

/// @nodoc
class __$$_AggregateVolumeCopyWithImpl<$Res>
    extends _$AggregateVolumeCopyWithImpl<$Res, _$_AggregateVolume>
    implements _$$_AggregateVolumeCopyWith<$Res> {
  __$$_AggregateVolumeCopyWithImpl(
      _$_AggregateVolume _value, $Res Function(_$_AggregateVolume) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? count = null,
    Object? chapters = null,
  }) {
    return _then(_$_AggregateVolume(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as Map<String, AggregateChapter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AggregateVolume implements _AggregateVolume {
  const _$_AggregateVolume(
      {required this.volume,
      required this.count,
      required final Map<String, AggregateChapter> chapters})
      : _chapters = chapters;

  factory _$_AggregateVolume.fromJson(Map<String, dynamic> json) =>
      _$$_AggregateVolumeFromJson(json);

  @override
  final String volume;
  @override
  final String count;
  final Map<String, AggregateChapter> _chapters;
  @override
  Map<String, AggregateChapter> get chapters {
    if (_chapters is EqualUnmodifiableMapView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_chapters);
  }

  @override
  String toString() {
    return 'AggregateVolume(volume: $volume, count: $count, chapters: $chapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AggregateVolume &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, volume, count,
      const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AggregateVolumeCopyWith<_$_AggregateVolume> get copyWith =>
      __$$_AggregateVolumeCopyWithImpl<_$_AggregateVolume>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AggregateVolumeToJson(
      this,
    );
  }
}

abstract class _AggregateVolume implements AggregateVolume {
  const factory _AggregateVolume(
          {required final String volume,
          required final String count,
          required final Map<String, AggregateChapter> chapters}) =
      _$_AggregateVolume;

  factory _AggregateVolume.fromJson(Map<String, dynamic> json) =
      _$_AggregateVolume.fromJson;

  @override
  String get volume;
  @override
  String get count;
  @override
  Map<String, AggregateChapter> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$_AggregateVolumeCopyWith<_$_AggregateVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

AggregateChapter _$AggregateChapterFromJson(Map<String, dynamic> json) {
  return _AggregateChapter.fromJson(json);
}

/// @nodoc
mixin _$AggregateChapter {
  String get chapter => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregateChapterCopyWith<AggregateChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateChapterCopyWith<$Res> {
  factory $AggregateChapterCopyWith(
          AggregateChapter value, $Res Function(AggregateChapter) then) =
      _$AggregateChapterCopyWithImpl<$Res, AggregateChapter>;
  @useResult
  $Res call({String chapter, String count});
}

/// @nodoc
class _$AggregateChapterCopyWithImpl<$Res, $Val extends AggregateChapter>
    implements $AggregateChapterCopyWith<$Res> {
  _$AggregateChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AggregateChapterCopyWith<$Res>
    implements $AggregateChapterCopyWith<$Res> {
  factory _$$_AggregateChapterCopyWith(
          _$_AggregateChapter value, $Res Function(_$_AggregateChapter) then) =
      __$$_AggregateChapterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chapter, String count});
}

/// @nodoc
class __$$_AggregateChapterCopyWithImpl<$Res>
    extends _$AggregateChapterCopyWithImpl<$Res, _$_AggregateChapter>
    implements _$$_AggregateChapterCopyWith<$Res> {
  __$$_AggregateChapterCopyWithImpl(
      _$_AggregateChapter _value, $Res Function(_$_AggregateChapter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? count = null,
  }) {
    return _then(_$_AggregateChapter(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AggregateChapter implements _AggregateChapter {
  const _$_AggregateChapter({required this.chapter, required this.count});

  factory _$_AggregateChapter.fromJson(Map<String, dynamic> json) =>
      _$$_AggregateChapterFromJson(json);

  @override
  final String chapter;
  @override
  final String count;

  @override
  String toString() {
    return 'AggregateChapter(chapter: $chapter, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AggregateChapter &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chapter, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AggregateChapterCopyWith<_$_AggregateChapter> get copyWith =>
      __$$_AggregateChapterCopyWithImpl<_$_AggregateChapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AggregateChapterToJson(
      this,
    );
  }
}

abstract class _AggregateChapter implements AggregateChapter {
  const factory _AggregateChapter(
      {required final String chapter,
      required final String count}) = _$_AggregateChapter;

  factory _AggregateChapter.fromJson(Map<String, dynamic> json) =
      _$_AggregateChapter.fromJson;

  @override
  String get chapter;
  @override
  String get count;
  @override
  @JsonKey(ignore: true)
  _$$_AggregateChapterCopyWith<_$_AggregateChapter> get copyWith =>
      throw _privateConstructorUsedError;
}
