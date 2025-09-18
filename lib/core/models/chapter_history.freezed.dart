// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChapterHistory {

 Manga get manga; Chapter get chapter; DateTime get readAt;
/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterHistoryCopyWith<ChapterHistory> get copyWith => _$ChapterHistoryCopyWithImpl<ChapterHistory>(this as ChapterHistory, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterHistory&&(identical(other.manga, manga) || other.manga == manga)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}


@override
int get hashCode => Object.hash(runtimeType,manga,chapter,readAt);

@override
String toString() {
  return 'ChapterHistory(manga: $manga, chapter: $chapter, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $ChapterHistoryCopyWith<$Res>  {
  factory $ChapterHistoryCopyWith(ChapterHistory value, $Res Function(ChapterHistory) _then) = _$ChapterHistoryCopyWithImpl;
@useResult
$Res call({
 Manga manga, Chapter chapter, DateTime readAt
});


$MangaCopyWith<$Res> get manga;$ChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class _$ChapterHistoryCopyWithImpl<$Res>
    implements $ChapterHistoryCopyWith<$Res> {
  _$ChapterHistoryCopyWithImpl(this._self, this._then);

  final ChapterHistory _self;
  final $Res Function(ChapterHistory) _then;

/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? manga = null,Object? chapter = null,Object? readAt = null,}) {
  return _then(_self.copyWith(
manga: null == manga ? _self.manga : manga // ignore: cast_nullable_to_non_nullable
as Manga,chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as Chapter,readAt: null == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MangaCopyWith<$Res> get manga {
  
  return $MangaCopyWith<$Res>(_self.manga, (value) {
    return _then(_self.copyWith(manga: value));
  });
}/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChapterCopyWith<$Res> get chapter {
  
  return $ChapterCopyWith<$Res>(_self.chapter, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChapterHistory].
extension ChapterHistoryPatterns on ChapterHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChapterHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChapterHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChapterHistory value)  $default,){
final _that = this;
switch (_that) {
case _ChapterHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChapterHistory value)?  $default,){
final _that = this;
switch (_that) {
case _ChapterHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Manga manga,  Chapter chapter,  DateTime readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChapterHistory() when $default != null:
return $default(_that.manga,_that.chapter,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Manga manga,  Chapter chapter,  DateTime readAt)  $default,) {final _that = this;
switch (_that) {
case _ChapterHistory():
return $default(_that.manga,_that.chapter,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Manga manga,  Chapter chapter,  DateTime readAt)?  $default,) {final _that = this;
switch (_that) {
case _ChapterHistory() when $default != null:
return $default(_that.manga,_that.chapter,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc


class _ChapterHistory implements ChapterHistory {
  const _ChapterHistory({required this.manga, required this.chapter, required this.readAt});
  

@override final  Manga manga;
@override final  Chapter chapter;
@override final  DateTime readAt;

/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterHistoryCopyWith<_ChapterHistory> get copyWith => __$ChapterHistoryCopyWithImpl<_ChapterHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterHistory&&(identical(other.manga, manga) || other.manga == manga)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}


@override
int get hashCode => Object.hash(runtimeType,manga,chapter,readAt);

@override
String toString() {
  return 'ChapterHistory(manga: $manga, chapter: $chapter, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$ChapterHistoryCopyWith<$Res> implements $ChapterHistoryCopyWith<$Res> {
  factory _$ChapterHistoryCopyWith(_ChapterHistory value, $Res Function(_ChapterHistory) _then) = __$ChapterHistoryCopyWithImpl;
@override @useResult
$Res call({
 Manga manga, Chapter chapter, DateTime readAt
});


@override $MangaCopyWith<$Res> get manga;@override $ChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class __$ChapterHistoryCopyWithImpl<$Res>
    implements _$ChapterHistoryCopyWith<$Res> {
  __$ChapterHistoryCopyWithImpl(this._self, this._then);

  final _ChapterHistory _self;
  final $Res Function(_ChapterHistory) _then;

/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? manga = null,Object? chapter = null,Object? readAt = null,}) {
  return _then(_ChapterHistory(
manga: null == manga ? _self.manga : manga // ignore: cast_nullable_to_non_nullable
as Manga,chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as Chapter,readAt: null == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ChapterHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MangaCopyWith<$Res> get manga {
  
  return $MangaCopyWith<$Res>(_self.manga, (value) {
    return _then(_self.copyWith(manga: value));
  });
}/// Create a copy of ChapterHistory
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
