// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_download_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChapterDownloadTask {

 Chapter get chapter; List<ChapterPage> get pages; DownloadTaskStatus get status; double get progress; Map<String, String>? get headers;
/// Create a copy of ChapterDownloadTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterDownloadTaskCopyWith<ChapterDownloadTask> get copyWith => _$ChapterDownloadTaskCopyWithImpl<ChapterDownloadTask>(this as ChapterDownloadTask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterDownloadTask&&(identical(other.chapter, chapter) || other.chapter == chapter)&&const DeepCollectionEquality().equals(other.pages, pages)&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress)&&const DeepCollectionEquality().equals(other.headers, headers));
}


@override
int get hashCode => Object.hash(runtimeType,chapter,const DeepCollectionEquality().hash(pages),status,progress,const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'ChapterDownloadTask(chapter: $chapter, pages: $pages, status: $status, progress: $progress, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $ChapterDownloadTaskCopyWith<$Res>  {
  factory $ChapterDownloadTaskCopyWith(ChapterDownloadTask value, $Res Function(ChapterDownloadTask) _then) = _$ChapterDownloadTaskCopyWithImpl;
@useResult
$Res call({
 Chapter chapter, List<ChapterPage> pages, DownloadTaskStatus status, double progress, Map<String, String>? headers
});


$ChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class _$ChapterDownloadTaskCopyWithImpl<$Res>
    implements $ChapterDownloadTaskCopyWith<$Res> {
  _$ChapterDownloadTaskCopyWithImpl(this._self, this._then);

  final ChapterDownloadTask _self;
  final $Res Function(ChapterDownloadTask) _then;

/// Create a copy of ChapterDownloadTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chapter = null,Object? pages = null,Object? status = null,Object? progress = null,Object? headers = freezed,}) {
  return _then(_self.copyWith(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as Chapter,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ChapterPage>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadTaskStatus,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}
/// Create a copy of ChapterDownloadTask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChapterCopyWith<$Res> get chapter {
  
  return $ChapterCopyWith<$Res>(_self.chapter, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChapterDownloadTask].
extension ChapterDownloadTaskPatterns on ChapterDownloadTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChapterDownloadTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChapterDownloadTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChapterDownloadTask value)  $default,){
final _that = this;
switch (_that) {
case _ChapterDownloadTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChapterDownloadTask value)?  $default,){
final _that = this;
switch (_that) {
case _ChapterDownloadTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Chapter chapter,  List<ChapterPage> pages,  DownloadTaskStatus status,  double progress,  Map<String, String>? headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChapterDownloadTask() when $default != null:
return $default(_that.chapter,_that.pages,_that.status,_that.progress,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Chapter chapter,  List<ChapterPage> pages,  DownloadTaskStatus status,  double progress,  Map<String, String>? headers)  $default,) {final _that = this;
switch (_that) {
case _ChapterDownloadTask():
return $default(_that.chapter,_that.pages,_that.status,_that.progress,_that.headers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Chapter chapter,  List<ChapterPage> pages,  DownloadTaskStatus status,  double progress,  Map<String, String>? headers)?  $default,) {final _that = this;
switch (_that) {
case _ChapterDownloadTask() when $default != null:
return $default(_that.chapter,_that.pages,_that.status,_that.progress,_that.headers);case _:
  return null;

}
}

}

/// @nodoc


class _ChapterDownloadTask extends ChapterDownloadTask {
  const _ChapterDownloadTask({required this.chapter, required final  List<ChapterPage> pages, this.status = DownloadTaskStatus.pending, this.progress = 0, final  Map<String, String>? headers}): _pages = pages,_headers = headers,super._();
  

@override final  Chapter chapter;
 final  List<ChapterPage> _pages;
@override List<ChapterPage> get pages {
  if (_pages is EqualUnmodifiableListView) return _pages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pages);
}

@override@JsonKey() final  DownloadTaskStatus status;
@override@JsonKey() final  double progress;
 final  Map<String, String>? _headers;
@override Map<String, String>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ChapterDownloadTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterDownloadTaskCopyWith<_ChapterDownloadTask> get copyWith => __$ChapterDownloadTaskCopyWithImpl<_ChapterDownloadTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterDownloadTask&&(identical(other.chapter, chapter) || other.chapter == chapter)&&const DeepCollectionEquality().equals(other._pages, _pages)&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress)&&const DeepCollectionEquality().equals(other._headers, _headers));
}


@override
int get hashCode => Object.hash(runtimeType,chapter,const DeepCollectionEquality().hash(_pages),status,progress,const DeepCollectionEquality().hash(_headers));

@override
String toString() {
  return 'ChapterDownloadTask(chapter: $chapter, pages: $pages, status: $status, progress: $progress, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$ChapterDownloadTaskCopyWith<$Res> implements $ChapterDownloadTaskCopyWith<$Res> {
  factory _$ChapterDownloadTaskCopyWith(_ChapterDownloadTask value, $Res Function(_ChapterDownloadTask) _then) = __$ChapterDownloadTaskCopyWithImpl;
@override @useResult
$Res call({
 Chapter chapter, List<ChapterPage> pages, DownloadTaskStatus status, double progress, Map<String, String>? headers
});


@override $ChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class __$ChapterDownloadTaskCopyWithImpl<$Res>
    implements _$ChapterDownloadTaskCopyWith<$Res> {
  __$ChapterDownloadTaskCopyWithImpl(this._self, this._then);

  final _ChapterDownloadTask _self;
  final $Res Function(_ChapterDownloadTask) _then;

/// Create a copy of ChapterDownloadTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chapter = null,Object? pages = null,Object? status = null,Object? progress = null,Object? headers = freezed,}) {
  return _then(_ChapterDownloadTask(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as Chapter,pages: null == pages ? _self._pages : pages // ignore: cast_nullable_to_non_nullable
as List<ChapterPage>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadTaskStatus,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

/// Create a copy of ChapterDownloadTask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChapterCopyWith<$Res> get chapter {
  
  return $ChapterCopyWith<$Res>(_self.chapter, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}

// dart format on
