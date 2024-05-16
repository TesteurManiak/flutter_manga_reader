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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AggregateResponseImplCopyWith<$Res>
    implements $AggregateResponseCopyWith<$Res> {
  factory _$$AggregateResponseImplCopyWith(_$AggregateResponseImpl value,
          $Res Function(_$AggregateResponseImpl) then) =
      __$$AggregateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result, Map<String, AggregateVolume>? volumes});
}

/// @nodoc
class __$$AggregateResponseImplCopyWithImpl<$Res>
    extends _$AggregateResponseCopyWithImpl<$Res, _$AggregateResponseImpl>
    implements _$$AggregateResponseImplCopyWith<$Res> {
  __$$AggregateResponseImplCopyWithImpl(_$AggregateResponseImpl _value,
      $Res Function(_$AggregateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? volumes = freezed,
  }) {
    return _then(_$AggregateResponseImpl(
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
class _$AggregateResponseImpl implements _AggregateResponse {
  const _$AggregateResponseImpl(
      {required this.result, final Map<String, AggregateVolume>? volumes})
      : _volumes = volumes;

  factory _$AggregateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregateResponseImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateResponseImpl &&
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
  _$$AggregateResponseImplCopyWith<_$AggregateResponseImpl> get copyWith =>
      __$$AggregateResponseImplCopyWithImpl<_$AggregateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregateResponseImplToJson(
      this,
    );
  }
}

abstract class _AggregateResponse implements AggregateResponse {
  const factory _AggregateResponse(
      {required final String result,
      final Map<String, AggregateVolume>? volumes}) = _$AggregateResponseImpl;

  factory _AggregateResponse.fromJson(Map<String, dynamic> json) =
      _$AggregateResponseImpl.fromJson;

  @override
  String get result;
  @override
  Map<String, AggregateVolume>? get volumes;
  @override
  @JsonKey(ignore: true)
  _$$AggregateResponseImplCopyWith<_$AggregateResponseImpl> get copyWith =>
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
abstract class _$$AggregateVolumeImplCopyWith<$Res>
    implements $AggregateVolumeCopyWith<$Res> {
  factory _$$AggregateVolumeImplCopyWith(_$AggregateVolumeImpl value,
          $Res Function(_$AggregateVolumeImpl) then) =
      __$$AggregateVolumeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String volume, String count, Map<String, AggregateChapter> chapters});
}

/// @nodoc
class __$$AggregateVolumeImplCopyWithImpl<$Res>
    extends _$AggregateVolumeCopyWithImpl<$Res, _$AggregateVolumeImpl>
    implements _$$AggregateVolumeImplCopyWith<$Res> {
  __$$AggregateVolumeImplCopyWithImpl(
      _$AggregateVolumeImpl _value, $Res Function(_$AggregateVolumeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? count = null,
    Object? chapters = null,
  }) {
    return _then(_$AggregateVolumeImpl(
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
class _$AggregateVolumeImpl implements _AggregateVolume {
  const _$AggregateVolumeImpl(
      {required this.volume,
      required this.count,
      required final Map<String, AggregateChapter> chapters})
      : _chapters = chapters;

  factory _$AggregateVolumeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregateVolumeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateVolumeImpl &&
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
  _$$AggregateVolumeImplCopyWith<_$AggregateVolumeImpl> get copyWith =>
      __$$AggregateVolumeImplCopyWithImpl<_$AggregateVolumeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregateVolumeImplToJson(
      this,
    );
  }
}

abstract class _AggregateVolume implements AggregateVolume {
  const factory _AggregateVolume(
          {required final String volume,
          required final String count,
          required final Map<String, AggregateChapter> chapters}) =
      _$AggregateVolumeImpl;

  factory _AggregateVolume.fromJson(Map<String, dynamic> json) =
      _$AggregateVolumeImpl.fromJson;

  @override
  String get volume;
  @override
  String get count;
  @override
  Map<String, AggregateChapter> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$AggregateVolumeImplCopyWith<_$AggregateVolumeImpl> get copyWith =>
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
abstract class _$$AggregateChapterImplCopyWith<$Res>
    implements $AggregateChapterCopyWith<$Res> {
  factory _$$AggregateChapterImplCopyWith(_$AggregateChapterImpl value,
          $Res Function(_$AggregateChapterImpl) then) =
      __$$AggregateChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chapter, String count});
}

/// @nodoc
class __$$AggregateChapterImplCopyWithImpl<$Res>
    extends _$AggregateChapterCopyWithImpl<$Res, _$AggregateChapterImpl>
    implements _$$AggregateChapterImplCopyWith<$Res> {
  __$$AggregateChapterImplCopyWithImpl(_$AggregateChapterImpl _value,
      $Res Function(_$AggregateChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? count = null,
  }) {
    return _then(_$AggregateChapterImpl(
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
class _$AggregateChapterImpl implements _AggregateChapter {
  const _$AggregateChapterImpl({required this.chapter, required this.count});

  factory _$AggregateChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregateChapterImplFromJson(json);

  @override
  final String chapter;
  @override
  final String count;

  @override
  String toString() {
    return 'AggregateChapter(chapter: $chapter, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateChapterImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chapter, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregateChapterImplCopyWith<_$AggregateChapterImpl> get copyWith =>
      __$$AggregateChapterImplCopyWithImpl<_$AggregateChapterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregateChapterImplToJson(
      this,
    );
  }
}

abstract class _AggregateChapter implements AggregateChapter {
  const factory _AggregateChapter(
      {required final String chapter,
      required final String count}) = _$AggregateChapterImpl;

  factory _AggregateChapter.fromJson(Map<String, dynamic> json) =
      _$AggregateChapterImpl.fromJson;

  @override
  String get chapter;
  @override
  String get count;
  @override
  @JsonKey(ignore: true)
  _$$AggregateChapterImplCopyWith<_$AggregateChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
