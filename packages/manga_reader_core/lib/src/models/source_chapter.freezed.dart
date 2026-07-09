// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [SourceChapter].
extension SourceChapterPatterns on SourceChapter {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceChapter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceChapter() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceChapter value)  $default,){
final _that = this;
switch (_that) {
case _SourceChapter():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceChapter value)?  $default,){
final _that = this;
switch (_that) {
case _SourceChapter() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String name,  DateTime? dateUpload,  double chapterNumber,  String? scanlator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceChapter() when $default != null:
return $default(_that.url,_that.name,_that.dateUpload,_that.chapterNumber,_that.scanlator);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String name,  DateTime? dateUpload,  double chapterNumber,  String? scanlator)  $default,) {final _that = this;
switch (_that) {
case _SourceChapter():
return $default(_that.url,_that.name,_that.dateUpload,_that.chapterNumber,_that.scanlator);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String name,  DateTime? dateUpload,  double chapterNumber,  String? scanlator)?  $default,) {final _that = this;
switch (_that) {
case _SourceChapter() when $default != null:
return $default(_that.url,_that.name,_that.dateUpload,_that.chapterNumber,_that.scanlator);case _:
  return null;

}
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
