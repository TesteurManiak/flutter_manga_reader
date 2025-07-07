// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SourceChapter {

 String get url; String get name; DateTime? get dateUpload; double get chapterNumber; String? get scanlator;
/// Create a copy of SourceChapter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceChapterCopyWith<SourceChapter> get copyWith => _$SourceChapterCopyWithImpl<SourceChapter>(this as SourceChapter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceChapter&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateUpload, dateUpload) || other.dateUpload == dateUpload)&&(identical(other.chapterNumber, chapterNumber) || other.chapterNumber == chapterNumber)&&(identical(other.scanlator, scanlator) || other.scanlator == scanlator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,name,dateUpload,chapterNumber,scanlator);

@override
String toString() {
  return 'SourceChapter(url: $url, name: $name, dateUpload: $dateUpload, chapterNumber: $chapterNumber, scanlator: $scanlator)';
}


}

/// @nodoc
abstract mixin class $SourceChapterCopyWith<$Res>  {
  factory $SourceChapterCopyWith(SourceChapter value, $Res Function(SourceChapter) _then) = _$SourceChapterCopyWithImpl;
@useResult
$Res call({
 String url, String name, DateTime? dateUpload, double chapterNumber, String? scanlator
});




}
/// @nodoc
class _$SourceChapterCopyWithImpl<$Res>
    implements $SourceChapterCopyWith<$Res> {
  _$SourceChapterCopyWithImpl(this._self, this._then);

  final SourceChapter _self;
  final $Res Function(SourceChapter) _then;

/// Create a copy of SourceChapter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? name = null,Object? dateUpload = freezed,Object? chapterNumber = null,Object? scanlator = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateUpload: freezed == dateUpload ? _self.dateUpload : dateUpload // ignore: cast_nullable_to_non_nullable
as DateTime?,chapterNumber: null == chapterNumber ? _self.chapterNumber : chapterNumber // ignore: cast_nullable_to_non_nullable
as double,scanlator: freezed == scanlator ? _self.scanlator : scanlator // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _SourceChapter implements SourceChapter {
  const _SourceChapter({required this.url, required this.name, this.dateUpload, this.chapterNumber = -1.0, this.scanlator});
  factory _SourceChapter.fromJson(Map<String, dynamic> json) => _$SourceChapterFromJson(json);

@override final  String url;
@override final  String name;
@override final  DateTime? dateUpload;
@override@JsonKey() final  double chapterNumber;
@override final  String? scanlator;

/// Create a copy of SourceChapter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceChapterCopyWith<_SourceChapter> get copyWith => __$SourceChapterCopyWithImpl<_SourceChapter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceChapter&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.dateUpload, dateUpload) || other.dateUpload == dateUpload)&&(identical(other.chapterNumber, chapterNumber) || other.chapterNumber == chapterNumber)&&(identical(other.scanlator, scanlator) || other.scanlator == scanlator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,name,dateUpload,chapterNumber,scanlator);

@override
String toString() {
  return 'SourceChapter(url: $url, name: $name, dateUpload: $dateUpload, chapterNumber: $chapterNumber, scanlator: $scanlator)';
}


}

/// @nodoc
abstract mixin class _$SourceChapterCopyWith<$Res> implements $SourceChapterCopyWith<$Res> {
  factory _$SourceChapterCopyWith(_SourceChapter value, $Res Function(_SourceChapter) _then) = __$SourceChapterCopyWithImpl;
@override @useResult
$Res call({
 String url, String name, DateTime? dateUpload, double chapterNumber, String? scanlator
});




}
/// @nodoc
class __$SourceChapterCopyWithImpl<$Res>
    implements _$SourceChapterCopyWith<$Res> {
  __$SourceChapterCopyWithImpl(this._self, this._then);

  final _SourceChapter _self;
  final $Res Function(_SourceChapter) _then;

/// Create a copy of SourceChapter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? name = null,Object? dateUpload = freezed,Object? chapterNumber = null,Object? scanlator = freezed,}) {
  return _then(_SourceChapter(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateUpload: freezed == dateUpload ? _self.dateUpload : dateUpload // ignore: cast_nullable_to_non_nullable
as DateTime?,chapterNumber: null == chapterNumber ? _self.chapterNumber : chapterNumber // ignore: cast_nullable_to_non_nullable
as double,scanlator: freezed == scanlator ? _self.scanlator : scanlator // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
