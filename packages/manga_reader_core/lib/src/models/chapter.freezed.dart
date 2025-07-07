// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Chapter {

 int get id; int get mangaId;// Source data
 String get url; String get name; DateTime? get dateUpload; double get chapterNumber; String? get scanlator;// Model data
 bool get read; bool get downloaded; bool get bookmark; int get lastPageRead; DateTime? get dateFetch; DateTime? get lastModified;
/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterCopyWith<Chapter> get copyWith => _$ChapterCopyWithImpl<Chapter>(this as Chapter, _$identity);

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chapter&&(identical(other.id, id) || other.id == id)&&(identical(other.mangaId, mangaId) || other.mangaId == mangaId)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateUpload, dateUpload) || other.dateUpload == dateUpload)&&(identical(other.chapterNumber, chapterNumber) || other.chapterNumber == chapterNumber)&&(identical(other.scanlator, scanlator) || other.scanlator == scanlator)&&(identical(other.read, read) || other.read == read)&&(identical(other.downloaded, downloaded) || other.downloaded == downloaded)&&(identical(other.bookmark, bookmark) || other.bookmark == bookmark)&&(identical(other.lastPageRead, lastPageRead) || other.lastPageRead == lastPageRead)&&(identical(other.dateFetch, dateFetch) || other.dateFetch == dateFetch)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mangaId,url,name,dateUpload,chapterNumber,scanlator,read,downloaded,bookmark,lastPageRead,dateFetch,lastModified);

@override
String toString() {
  return 'Chapter(id: $id, mangaId: $mangaId, url: $url, name: $name, dateUpload: $dateUpload, chapterNumber: $chapterNumber, scanlator: $scanlator, read: $read, downloaded: $downloaded, bookmark: $bookmark, lastPageRead: $lastPageRead, dateFetch: $dateFetch, lastModified: $lastModified)';
}


}

/// @nodoc
abstract mixin class $ChapterCopyWith<$Res>  {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) _then) = _$ChapterCopyWithImpl;
@useResult
$Res call({
 int id, int mangaId, String url, String name, DateTime? dateUpload, double chapterNumber, String? scanlator, bool read, bool downloaded, bool bookmark, int lastPageRead, DateTime? dateFetch, DateTime? lastModified
});




}
/// @nodoc
class _$ChapterCopyWithImpl<$Res>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._self, this._then);

  final Chapter _self;
  final $Res Function(Chapter) _then;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? mangaId = null,Object? url = null,Object? name = null,Object? dateUpload = freezed,Object? chapterNumber = null,Object? scanlator = freezed,Object? read = null,Object? downloaded = null,Object? bookmark = null,Object? lastPageRead = null,Object? dateFetch = freezed,Object? lastModified = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,mangaId: null == mangaId ? _self.mangaId : mangaId // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateUpload: freezed == dateUpload ? _self.dateUpload : dateUpload // ignore: cast_nullable_to_non_nullable
as DateTime?,chapterNumber: null == chapterNumber ? _self.chapterNumber : chapterNumber // ignore: cast_nullable_to_non_nullable
as double,scanlator: freezed == scanlator ? _self.scanlator : scanlator // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,downloaded: null == downloaded ? _self.downloaded : downloaded // ignore: cast_nullable_to_non_nullable
as bool,bookmark: null == bookmark ? _self.bookmark : bookmark // ignore: cast_nullable_to_non_nullable
as bool,lastPageRead: null == lastPageRead ? _self.lastPageRead : lastPageRead // ignore: cast_nullable_to_non_nullable
as int,dateFetch: freezed == dateFetch ? _self.dateFetch : dateFetch // ignore: cast_nullable_to_non_nullable
as DateTime?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Chapter extends Chapter {
  const _Chapter({required this.id, required this.mangaId, required this.url, required this.name, this.dateUpload, this.chapterNumber = 0.0, this.scanlator, this.read = false, this.downloaded = false, this.bookmark = false, this.lastPageRead = 0, this.dateFetch, this.lastModified}): super._();
  factory _Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);

@override final  int id;
@override final  int mangaId;
// Source data
@override final  String url;
@override final  String name;
@override final  DateTime? dateUpload;
@override@JsonKey() final  double chapterNumber;
@override final  String? scanlator;
// Model data
@override@JsonKey() final  bool read;
@override@JsonKey() final  bool downloaded;
@override@JsonKey() final  bool bookmark;
@override@JsonKey() final  int lastPageRead;
@override final  DateTime? dateFetch;
@override final  DateTime? lastModified;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterCopyWith<_Chapter> get copyWith => __$ChapterCopyWithImpl<_Chapter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chapter&&(identical(other.id, id) || other.id == id)&&(identical(other.mangaId, mangaId) || other.mangaId == mangaId)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateUpload, dateUpload) || other.dateUpload == dateUpload)&&(identical(other.chapterNumber, chapterNumber) || other.chapterNumber == chapterNumber)&&(identical(other.scanlator, scanlator) || other.scanlator == scanlator)&&(identical(other.read, read) || other.read == read)&&(identical(other.downloaded, downloaded) || other.downloaded == downloaded)&&(identical(other.bookmark, bookmark) || other.bookmark == bookmark)&&(identical(other.lastPageRead, lastPageRead) || other.lastPageRead == lastPageRead)&&(identical(other.dateFetch, dateFetch) || other.dateFetch == dateFetch)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mangaId,url,name,dateUpload,chapterNumber,scanlator,read,downloaded,bookmark,lastPageRead,dateFetch,lastModified);

@override
String toString() {
  return 'Chapter(id: $id, mangaId: $mangaId, url: $url, name: $name, dateUpload: $dateUpload, chapterNumber: $chapterNumber, scanlator: $scanlator, read: $read, downloaded: $downloaded, bookmark: $bookmark, lastPageRead: $lastPageRead, dateFetch: $dateFetch, lastModified: $lastModified)';
}


}

/// @nodoc
abstract mixin class _$ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$ChapterCopyWith(_Chapter value, $Res Function(_Chapter) _then) = __$ChapterCopyWithImpl;
@override @useResult
$Res call({
 int id, int mangaId, String url, String name, DateTime? dateUpload, double chapterNumber, String? scanlator, bool read, bool downloaded, bool bookmark, int lastPageRead, DateTime? dateFetch, DateTime? lastModified
});




}
/// @nodoc
class __$ChapterCopyWithImpl<$Res>
    implements _$ChapterCopyWith<$Res> {
  __$ChapterCopyWithImpl(this._self, this._then);

  final _Chapter _self;
  final $Res Function(_Chapter) _then;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? mangaId = null,Object? url = null,Object? name = null,Object? dateUpload = freezed,Object? chapterNumber = null,Object? scanlator = freezed,Object? read = null,Object? downloaded = null,Object? bookmark = null,Object? lastPageRead = null,Object? dateFetch = freezed,Object? lastModified = freezed,}) {
  return _then(_Chapter(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,mangaId: null == mangaId ? _self.mangaId : mangaId // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateUpload: freezed == dateUpload ? _self.dateUpload : dateUpload // ignore: cast_nullable_to_non_nullable
as DateTime?,chapterNumber: null == chapterNumber ? _self.chapterNumber : chapterNumber // ignore: cast_nullable_to_non_nullable
as double,scanlator: freezed == scanlator ? _self.scanlator : scanlator // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,downloaded: null == downloaded ? _self.downloaded : downloaded // ignore: cast_nullable_to_non_nullable
as bool,bookmark: null == bookmark ? _self.bookmark : bookmark // ignore: cast_nullable_to_non_nullable
as bool,lastPageRead: null == lastPageRead ? _self.lastPageRead : lastPageRead // ignore: cast_nullable_to_non_nullable
as int,dateFetch: freezed == dateFetch ? _self.dateFetch : dateFetch // ignore: cast_nullable_to_non_nullable
as DateTime?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
