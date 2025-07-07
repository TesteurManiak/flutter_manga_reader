// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
