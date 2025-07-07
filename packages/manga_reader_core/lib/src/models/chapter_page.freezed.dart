// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChapterPage {

 int get index; String get url; String get imageUrl;
/// Create a copy of ChapterPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterPageCopyWith<ChapterPage> get copyWith => _$ChapterPageCopyWithImpl<ChapterPage>(this as ChapterPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterPage&&(identical(other.index, index) || other.index == index)&&(identical(other.url, url) || other.url == url)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,index,url,imageUrl);

@override
String toString() {
  return 'ChapterPage(index: $index, url: $url, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ChapterPageCopyWith<$Res>  {
  factory $ChapterPageCopyWith(ChapterPage value, $Res Function(ChapterPage) _then) = _$ChapterPageCopyWithImpl;
@useResult
$Res call({
 int index, String url, String imageUrl
});




}
/// @nodoc
class _$ChapterPageCopyWithImpl<$Res>
    implements $ChapterPageCopyWith<$Res> {
  _$ChapterPageCopyWithImpl(this._self, this._then);

  final ChapterPage _self;
  final $Res Function(ChapterPage) _then;

/// Create a copy of ChapterPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? url = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _ChapterPage extends ChapterPage {
  const _ChapterPage({required this.index, this.url = '', this.imageUrl = ''}): super._();
  

@override final  int index;
@override@JsonKey() final  String url;
@override@JsonKey() final  String imageUrl;

/// Create a copy of ChapterPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterPageCopyWith<_ChapterPage> get copyWith => __$ChapterPageCopyWithImpl<_ChapterPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterPage&&(identical(other.index, index) || other.index == index)&&(identical(other.url, url) || other.url == url)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,index,url,imageUrl);

@override
String toString() {
  return 'ChapterPage(index: $index, url: $url, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ChapterPageCopyWith<$Res> implements $ChapterPageCopyWith<$Res> {
  factory _$ChapterPageCopyWith(_ChapterPage value, $Res Function(_ChapterPage) _then) = __$ChapterPageCopyWithImpl;
@override @useResult
$Res call({
 int index, String url, String imageUrl
});




}
/// @nodoc
class __$ChapterPageCopyWithImpl<$Res>
    implements _$ChapterPageCopyWith<$Res> {
  __$ChapterPageCopyWithImpl(this._self, this._then);

  final _ChapterPage _self;
  final $Res Function(_ChapterPage) _then;

/// Create a copy of ChapterPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? url = null,Object? imageUrl = null,}) {
  return _then(_ChapterPage(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
