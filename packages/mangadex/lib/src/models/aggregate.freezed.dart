// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AggregateResponse {

 String get result; Map<String, AggregateVolume>? get volumes;
/// Create a copy of AggregateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AggregateResponseCopyWith<AggregateResponse> get copyWith => _$AggregateResponseCopyWithImpl<AggregateResponse>(this as AggregateResponse, _$identity);

  /// Serializes this AggregateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AggregateResponse&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other.volumes, volumes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result,const DeepCollectionEquality().hash(volumes));

@override
String toString() {
  return 'AggregateResponse(result: $result, volumes: $volumes)';
}


}

/// @nodoc
abstract mixin class $AggregateResponseCopyWith<$Res>  {
  factory $AggregateResponseCopyWith(AggregateResponse value, $Res Function(AggregateResponse) _then) = _$AggregateResponseCopyWithImpl;
@useResult
$Res call({
 String result, Map<String, AggregateVolume>? volumes
});




}
/// @nodoc
class _$AggregateResponseCopyWithImpl<$Res>
    implements $AggregateResponseCopyWith<$Res> {
  _$AggregateResponseCopyWithImpl(this._self, this._then);

  final AggregateResponse _self;
  final $Res Function(AggregateResponse) _then;

/// Create a copy of AggregateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? volumes = freezed,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,volumes: freezed == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as Map<String, AggregateVolume>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AggregateResponse implements AggregateResponse {
  const _AggregateResponse({required this.result, final  Map<String, AggregateVolume>? volumes}): _volumes = volumes;
  factory _AggregateResponse.fromJson(Map<String, dynamic> json) => _$AggregateResponseFromJson(json);

@override final  String result;
 final  Map<String, AggregateVolume>? _volumes;
@override Map<String, AggregateVolume>? get volumes {
  final value = _volumes;
  if (value == null) return null;
  if (_volumes is EqualUnmodifiableMapView) return _volumes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AggregateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AggregateResponseCopyWith<_AggregateResponse> get copyWith => __$AggregateResponseCopyWithImpl<_AggregateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AggregateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AggregateResponse&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other._volumes, _volumes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result,const DeepCollectionEquality().hash(_volumes));

@override
String toString() {
  return 'AggregateResponse(result: $result, volumes: $volumes)';
}


}

/// @nodoc
abstract mixin class _$AggregateResponseCopyWith<$Res> implements $AggregateResponseCopyWith<$Res> {
  factory _$AggregateResponseCopyWith(_AggregateResponse value, $Res Function(_AggregateResponse) _then) = __$AggregateResponseCopyWithImpl;
@override @useResult
$Res call({
 String result, Map<String, AggregateVolume>? volumes
});




}
/// @nodoc
class __$AggregateResponseCopyWithImpl<$Res>
    implements _$AggregateResponseCopyWith<$Res> {
  __$AggregateResponseCopyWithImpl(this._self, this._then);

  final _AggregateResponse _self;
  final $Res Function(_AggregateResponse) _then;

/// Create a copy of AggregateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? volumes = freezed,}) {
  return _then(_AggregateResponse(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,volumes: freezed == volumes ? _self._volumes : volumes // ignore: cast_nullable_to_non_nullable
as Map<String, AggregateVolume>?,
  ));
}


}


/// @nodoc
mixin _$AggregateVolume {

 String get volume; String get count; Map<String, AggregateChapter> get chapters;
/// Create a copy of AggregateVolume
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AggregateVolumeCopyWith<AggregateVolume> get copyWith => _$AggregateVolumeCopyWithImpl<AggregateVolume>(this as AggregateVolume, _$identity);

  /// Serializes this AggregateVolume to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AggregateVolume&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.chapters, chapters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,volume,count,const DeepCollectionEquality().hash(chapters));

@override
String toString() {
  return 'AggregateVolume(volume: $volume, count: $count, chapters: $chapters)';
}


}

/// @nodoc
abstract mixin class $AggregateVolumeCopyWith<$Res>  {
  factory $AggregateVolumeCopyWith(AggregateVolume value, $Res Function(AggregateVolume) _then) = _$AggregateVolumeCopyWithImpl;
@useResult
$Res call({
 String volume, String count, Map<String, AggregateChapter> chapters
});




}
/// @nodoc
class _$AggregateVolumeCopyWithImpl<$Res>
    implements $AggregateVolumeCopyWith<$Res> {
  _$AggregateVolumeCopyWithImpl(this._self, this._then);

  final AggregateVolume _self;
  final $Res Function(AggregateVolume) _then;

/// Create a copy of AggregateVolume
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volume = null,Object? count = null,Object? chapters = null,}) {
  return _then(_self.copyWith(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as String,chapters: null == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as Map<String, AggregateChapter>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AggregateVolume implements AggregateVolume {
  const _AggregateVolume({required this.volume, required this.count, required final  Map<String, AggregateChapter> chapters}): _chapters = chapters;
  factory _AggregateVolume.fromJson(Map<String, dynamic> json) => _$AggregateVolumeFromJson(json);

@override final  String volume;
@override final  String count;
 final  Map<String, AggregateChapter> _chapters;
@override Map<String, AggregateChapter> get chapters {
  if (_chapters is EqualUnmodifiableMapView) return _chapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_chapters);
}


/// Create a copy of AggregateVolume
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AggregateVolumeCopyWith<_AggregateVolume> get copyWith => __$AggregateVolumeCopyWithImpl<_AggregateVolume>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AggregateVolumeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AggregateVolume&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._chapters, _chapters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,volume,count,const DeepCollectionEquality().hash(_chapters));

@override
String toString() {
  return 'AggregateVolume(volume: $volume, count: $count, chapters: $chapters)';
}


}

/// @nodoc
abstract mixin class _$AggregateVolumeCopyWith<$Res> implements $AggregateVolumeCopyWith<$Res> {
  factory _$AggregateVolumeCopyWith(_AggregateVolume value, $Res Function(_AggregateVolume) _then) = __$AggregateVolumeCopyWithImpl;
@override @useResult
$Res call({
 String volume, String count, Map<String, AggregateChapter> chapters
});




}
/// @nodoc
class __$AggregateVolumeCopyWithImpl<$Res>
    implements _$AggregateVolumeCopyWith<$Res> {
  __$AggregateVolumeCopyWithImpl(this._self, this._then);

  final _AggregateVolume _self;
  final $Res Function(_AggregateVolume) _then;

/// Create a copy of AggregateVolume
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volume = null,Object? count = null,Object? chapters = null,}) {
  return _then(_AggregateVolume(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as String,chapters: null == chapters ? _self._chapters : chapters // ignore: cast_nullable_to_non_nullable
as Map<String, AggregateChapter>,
  ));
}


}


/// @nodoc
mixin _$AggregateChapter {

 String get chapter; String get count;
/// Create a copy of AggregateChapter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AggregateChapterCopyWith<AggregateChapter> get copyWith => _$AggregateChapterCopyWithImpl<AggregateChapter>(this as AggregateChapter, _$identity);

  /// Serializes this AggregateChapter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AggregateChapter&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chapter,count);

@override
String toString() {
  return 'AggregateChapter(chapter: $chapter, count: $count)';
}


}

/// @nodoc
abstract mixin class $AggregateChapterCopyWith<$Res>  {
  factory $AggregateChapterCopyWith(AggregateChapter value, $Res Function(AggregateChapter) _then) = _$AggregateChapterCopyWithImpl;
@useResult
$Res call({
 String chapter, String count
});




}
/// @nodoc
class _$AggregateChapterCopyWithImpl<$Res>
    implements $AggregateChapterCopyWith<$Res> {
  _$AggregateChapterCopyWithImpl(this._self, this._then);

  final AggregateChapter _self;
  final $Res Function(AggregateChapter) _then;

/// Create a copy of AggregateChapter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chapter = null,Object? count = null,}) {
  return _then(_self.copyWith(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AggregateChapter implements AggregateChapter {
  const _AggregateChapter({required this.chapter, required this.count});
  factory _AggregateChapter.fromJson(Map<String, dynamic> json) => _$AggregateChapterFromJson(json);

@override final  String chapter;
@override final  String count;

/// Create a copy of AggregateChapter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AggregateChapterCopyWith<_AggregateChapter> get copyWith => __$AggregateChapterCopyWithImpl<_AggregateChapter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AggregateChapterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AggregateChapter&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chapter,count);

@override
String toString() {
  return 'AggregateChapter(chapter: $chapter, count: $count)';
}


}

/// @nodoc
abstract mixin class _$AggregateChapterCopyWith<$Res> implements $AggregateChapterCopyWith<$Res> {
  factory _$AggregateChapterCopyWith(_AggregateChapter value, $Res Function(_AggregateChapter) _then) = __$AggregateChapterCopyWithImpl;
@override @useResult
$Res call({
 String chapter, String count
});




}
/// @nodoc
class __$AggregateChapterCopyWithImpl<$Res>
    implements _$AggregateChapterCopyWith<$Res> {
  __$AggregateChapterCopyWithImpl(this._self, this._then);

  final _AggregateChapter _self;
  final $Res Function(_AggregateChapter) _then;

/// Create a copy of AggregateChapter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chapter = null,Object? count = null,}) {
  return _then(_AggregateChapter(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
