// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_viewer_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChapterViewerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterViewerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChapterViewerState()';
}


}

/// @nodoc
class $ChapterViewerStateCopyWith<$Res>  {
$ChapterViewerStateCopyWith(ChapterViewerState _, $Res Function(ChapterViewerState) __);
}


/// Adds pattern-matching-related methods to [ChapterViewerState].
extension ChapterViewerStatePatterns on ChapterViewerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChapterViewerLoading value)?  loading,TResult Function( ChapterViewerLoaded value)?  loaded,TResult Function( ChapterViewerError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChapterViewerLoading() when loading != null:
return loading(_that);case ChapterViewerLoaded() when loaded != null:
return loaded(_that);case ChapterViewerError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChapterViewerLoading value)  loading,required TResult Function( ChapterViewerLoaded value)  loaded,required TResult Function( ChapterViewerError value)  error,}){
final _that = this;
switch (_that) {
case ChapterViewerLoading():
return loading(_that);case ChapterViewerLoaded():
return loaded(_that);case ChapterViewerError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChapterViewerLoading value)?  loading,TResult? Function( ChapterViewerLoaded value)?  loaded,TResult? Function( ChapterViewerError value)?  error,}){
final _that = this;
switch (_that) {
case ChapterViewerLoading() when loading != null:
return loading(_that);case ChapterViewerLoaded() when loaded != null:
return loaded(_that);case ChapterViewerError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Chapter chapter,  List<ChapterPage> pages)?  loaded,TResult Function( String? error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChapterViewerLoading() when loading != null:
return loading();case ChapterViewerLoaded() when loaded != null:
return loaded(_that.chapter,_that.pages);case ChapterViewerError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Chapter chapter,  List<ChapterPage> pages)  loaded,required TResult Function( String? error)  error,}) {final _that = this;
switch (_that) {
case ChapterViewerLoading():
return loading();case ChapterViewerLoaded():
return loaded(_that.chapter,_that.pages);case ChapterViewerError():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Chapter chapter,  List<ChapterPage> pages)?  loaded,TResult? Function( String? error)?  error,}) {final _that = this;
switch (_that) {
case ChapterViewerLoading() when loading != null:
return loading();case ChapterViewerLoaded() when loaded != null:
return loaded(_that.chapter,_that.pages);case ChapterViewerError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ChapterViewerLoading extends ChapterViewerState {
  const ChapterViewerLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterViewerLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChapterViewerState.loading()';
}


}




/// @nodoc


class ChapterViewerLoaded extends ChapterViewerState {
  const ChapterViewerLoaded({required this.chapter, required final  List<ChapterPage> pages}): _pages = pages,super._();
  

 final  Chapter chapter;
 final  List<ChapterPage> _pages;
 List<ChapterPage> get pages {
  if (_pages is EqualUnmodifiableListView) return _pages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pages);
}


/// Create a copy of ChapterViewerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterViewerLoadedCopyWith<ChapterViewerLoaded> get copyWith => _$ChapterViewerLoadedCopyWithImpl<ChapterViewerLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterViewerLoaded&&(identical(other.chapter, chapter) || other.chapter == chapter)&&const DeepCollectionEquality().equals(other._pages, _pages));
}


@override
int get hashCode => Object.hash(runtimeType,chapter,const DeepCollectionEquality().hash(_pages));

@override
String toString() {
  return 'ChapterViewerState.loaded(chapter: $chapter, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $ChapterViewerLoadedCopyWith<$Res> implements $ChapterViewerStateCopyWith<$Res> {
  factory $ChapterViewerLoadedCopyWith(ChapterViewerLoaded value, $Res Function(ChapterViewerLoaded) _then) = _$ChapterViewerLoadedCopyWithImpl;
@useResult
$Res call({
 Chapter chapter, List<ChapterPage> pages
});


$ChapterCopyWith<$Res> get chapter;

}
/// @nodoc
class _$ChapterViewerLoadedCopyWithImpl<$Res>
    implements $ChapterViewerLoadedCopyWith<$Res> {
  _$ChapterViewerLoadedCopyWithImpl(this._self, this._then);

  final ChapterViewerLoaded _self;
  final $Res Function(ChapterViewerLoaded) _then;

/// Create a copy of ChapterViewerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chapter = null,Object? pages = null,}) {
  return _then(ChapterViewerLoaded(
chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as Chapter,pages: null == pages ? _self._pages : pages // ignore: cast_nullable_to_non_nullable
as List<ChapterPage>,
  ));
}

/// Create a copy of ChapterViewerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChapterCopyWith<$Res> get chapter {
  
  return $ChapterCopyWith<$Res>(_self.chapter, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}

/// @nodoc


class ChapterViewerError extends ChapterViewerState {
  const ChapterViewerError({this.error}): super._();
  

 final  String? error;

/// Create a copy of ChapterViewerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterViewerErrorCopyWith<ChapterViewerError> get copyWith => _$ChapterViewerErrorCopyWithImpl<ChapterViewerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterViewerError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ChapterViewerState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ChapterViewerErrorCopyWith<$Res> implements $ChapterViewerStateCopyWith<$Res> {
  factory $ChapterViewerErrorCopyWith(ChapterViewerError value, $Res Function(ChapterViewerError) _then) = _$ChapterViewerErrorCopyWithImpl;
@useResult
$Res call({
 String? error
});




}
/// @nodoc
class _$ChapterViewerErrorCopyWithImpl<$Res>
    implements $ChapterViewerErrorCopyWith<$Res> {
  _$ChapterViewerErrorCopyWithImpl(this._self, this._then);

  final ChapterViewerError _self;
  final $Res Function(ChapterViewerError) _then;

/// Create a copy of ChapterViewerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ChapterViewerError(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
