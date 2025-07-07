// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AtHome {

 String get baseUrl; AtHomeChapter get chapter;
/// Create a copy of AtHome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AtHomeCopyWith<AtHome> get copyWith => _$AtHomeCopyWithImpl<AtHome>(this as AtHome, _$identity);

  /// Serializes this AtHome to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AtHome&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.chapter, chapter) || other.chapter == chapter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,chapter);

@override
String toString() {
  return 'AtHome(baseUrl: $baseUrl, chapter: $chapter)';
}


}

/// @nodoc
abstract mixin class $AtHomeCopyWith<$Res>  {
  factory $AtHomeCopyWith(AtHome value, $Res Function(AtHome) _then) = _$AtHomeCopyWithImpl;
@useResult
$Res call({
 String baseUrl, AtHomeChapter chapter
});


$AtHomeChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class _$AtHomeCopyWithImpl<$Res>
    implements $AtHomeCopyWith<$Res> {
  _$AtHomeCopyWithImpl(this._self, this._then);

  final AtHome _self;
  final $Res Function(AtHome) _then;

/// Create a copy of AtHome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? chapter = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as AtHomeChapter,
  ));
}
/// Create a copy of AtHome
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AtHomeChapterCopyWith<$Res> get chapter {
  
  return $AtHomeChapterCopyWith<$Res>(_self.chapter, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AtHome implements AtHome {
  const _AtHome({required this.baseUrl, required this.chapter});
  factory _AtHome.fromJson(Map<String, dynamic> json) => _$AtHomeFromJson(json);

@override final  String baseUrl;
@override final  AtHomeChapter chapter;

/// Create a copy of AtHome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AtHomeCopyWith<_AtHome> get copyWith => __$AtHomeCopyWithImpl<_AtHome>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AtHomeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AtHome&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.chapter, chapter) || other.chapter == chapter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,chapter);

@override
String toString() {
  return 'AtHome(baseUrl: $baseUrl, chapter: $chapter)';
}


}

/// @nodoc
abstract mixin class _$AtHomeCopyWith<$Res> implements $AtHomeCopyWith<$Res> {
  factory _$AtHomeCopyWith(_AtHome value, $Res Function(_AtHome) _then) = __$AtHomeCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, AtHomeChapter chapter
});


@override $AtHomeChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class __$AtHomeCopyWithImpl<$Res>
    implements _$AtHomeCopyWith<$Res> {
  __$AtHomeCopyWithImpl(this._self, this._then);

  final _AtHome _self;
  final $Res Function(_AtHome) _then;

/// Create a copy of AtHome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? chapter = null,}) {
  return _then(_AtHome(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as AtHomeChapter,
  ));
}

/// Create a copy of AtHome
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AtHomeChapterCopyWith<$Res> get chapter {
  
  return $AtHomeChapterCopyWith<$Res>(_self.chapter, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}


/// @nodoc
mixin _$AtHomeChapter {

 String get hash; List<String> get data; List<String> get dataSaver;
/// Create a copy of AtHomeChapter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AtHomeChapterCopyWith<AtHomeChapter> get copyWith => _$AtHomeChapterCopyWithImpl<AtHomeChapter>(this as AtHomeChapter, _$identity);

  /// Serializes this AtHomeChapter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AtHomeChapter&&(identical(other.hash, hash) || other.hash == hash)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.dataSaver, dataSaver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(dataSaver));

@override
String toString() {
  return 'AtHomeChapter(hash: $hash, data: $data, dataSaver: $dataSaver)';
}


}

/// @nodoc
abstract mixin class $AtHomeChapterCopyWith<$Res>  {
  factory $AtHomeChapterCopyWith(AtHomeChapter value, $Res Function(AtHomeChapter) _then) = _$AtHomeChapterCopyWithImpl;
@useResult
$Res call({
 String hash, List<String> data, List<String> dataSaver
});




}
/// @nodoc
class _$AtHomeChapterCopyWithImpl<$Res>
    implements $AtHomeChapterCopyWith<$Res> {
  _$AtHomeChapterCopyWithImpl(this._self, this._then);

  final AtHomeChapter _self;
  final $Res Function(AtHomeChapter) _then;

/// Create a copy of AtHomeChapter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hash = null,Object? data = null,Object? dataSaver = null,}) {
  return _then(_self.copyWith(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<String>,dataSaver: null == dataSaver ? _self.dataSaver : dataSaver // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AtHomeChapter implements AtHomeChapter {
  const _AtHomeChapter({required this.hash, required final  List<String> data, required final  List<String> dataSaver}): _data = data,_dataSaver = dataSaver;
  factory _AtHomeChapter.fromJson(Map<String, dynamic> json) => _$AtHomeChapterFromJson(json);

@override final  String hash;
 final  List<String> _data;
@override List<String> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

 final  List<String> _dataSaver;
@override List<String> get dataSaver {
  if (_dataSaver is EqualUnmodifiableListView) return _dataSaver;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dataSaver);
}


/// Create a copy of AtHomeChapter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AtHomeChapterCopyWith<_AtHomeChapter> get copyWith => __$AtHomeChapterCopyWithImpl<_AtHomeChapter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AtHomeChapterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AtHomeChapter&&(identical(other.hash, hash) || other.hash == hash)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._dataSaver, _dataSaver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_dataSaver));

@override
String toString() {
  return 'AtHomeChapter(hash: $hash, data: $data, dataSaver: $dataSaver)';
}


}

/// @nodoc
abstract mixin class _$AtHomeChapterCopyWith<$Res> implements $AtHomeChapterCopyWith<$Res> {
  factory _$AtHomeChapterCopyWith(_AtHomeChapter value, $Res Function(_AtHomeChapter) _then) = __$AtHomeChapterCopyWithImpl;
@override @useResult
$Res call({
 String hash, List<String> data, List<String> dataSaver
});




}
/// @nodoc
class __$AtHomeChapterCopyWithImpl<$Res>
    implements _$AtHomeChapterCopyWith<$Res> {
  __$AtHomeChapterCopyWithImpl(this._self, this._then);

  final _AtHomeChapter _self;
  final $Res Function(_AtHomeChapter) _then;

/// Create a copy of AtHomeChapter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hash = null,Object? data = null,Object? dataSaver = null,}) {
  return _then(_AtHomeChapter(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<String>,dataSaver: null == dataSaver ? _self._dataSaver : dataSaver // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$ImageReport {

 String get url; bool get success; int? get bytes; bool get cached; int get duration;
/// Create a copy of ImageReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageReportCopyWith<ImageReport> get copyWith => _$ImageReportCopyWithImpl<ImageReport>(this as ImageReport, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageReport&&(identical(other.url, url) || other.url == url)&&(identical(other.success, success) || other.success == success)&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.cached, cached) || other.cached == cached)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,url,success,bytes,cached,duration);

@override
String toString() {
  return 'ImageReport(url: $url, success: $success, bytes: $bytes, cached: $cached, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $ImageReportCopyWith<$Res>  {
  factory $ImageReportCopyWith(ImageReport value, $Res Function(ImageReport) _then) = _$ImageReportCopyWithImpl;
@useResult
$Res call({
 String url, bool success, int? bytes, bool cached, int duration
});




}
/// @nodoc
class _$ImageReportCopyWithImpl<$Res>
    implements $ImageReportCopyWith<$Res> {
  _$ImageReportCopyWithImpl(this._self, this._then);

  final ImageReport _self;
  final $Res Function(ImageReport) _then;

/// Create a copy of ImageReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? success = null,Object? bytes = freezed,Object? cached = null,Object? duration = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,bytes: freezed == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int?,cached: null == cached ? _self.cached : cached // ignore: cast_nullable_to_non_nullable
as bool,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _ImageReport implements ImageReport {
  const _ImageReport({required this.url, required this.success, this.bytes, required this.cached, required this.duration});
  

@override final  String url;
@override final  bool success;
@override final  int? bytes;
@override final  bool cached;
@override final  int duration;

/// Create a copy of ImageReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageReportCopyWith<_ImageReport> get copyWith => __$ImageReportCopyWithImpl<_ImageReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageReport&&(identical(other.url, url) || other.url == url)&&(identical(other.success, success) || other.success == success)&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.cached, cached) || other.cached == cached)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,url,success,bytes,cached,duration);

@override
String toString() {
  return 'ImageReport(url: $url, success: $success, bytes: $bytes, cached: $cached, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$ImageReportCopyWith<$Res> implements $ImageReportCopyWith<$Res> {
  factory _$ImageReportCopyWith(_ImageReport value, $Res Function(_ImageReport) _then) = __$ImageReportCopyWithImpl;
@override @useResult
$Res call({
 String url, bool success, int? bytes, bool cached, int duration
});




}
/// @nodoc
class __$ImageReportCopyWithImpl<$Res>
    implements _$ImageReportCopyWith<$Res> {
  __$ImageReportCopyWithImpl(this._self, this._then);

  final _ImageReport _self;
  final $Res Function(_ImageReport) _then;

/// Create a copy of ImageReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? success = null,Object? bytes = freezed,Object? cached = null,Object? duration = null,}) {
  return _then(_ImageReport(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,bytes: freezed == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int?,cached: null == cached ? _self.cached : cached // ignore: cast_nullable_to_non_nullable
as bool,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
