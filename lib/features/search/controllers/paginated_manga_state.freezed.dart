// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_manga_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedMangaState {

 int get page; bool get hasMore;
/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMangaStateCopyWith<PaginatedMangaState> get copyWith => _$PaginatedMangaStateCopyWithImpl<PaginatedMangaState>(this as PaginatedMangaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMangaState&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,page,hasMore);

@override
String toString() {
  return 'PaginatedMangaState(page: $page, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $PaginatedMangaStateCopyWith<$Res>  {
  factory $PaginatedMangaStateCopyWith(PaginatedMangaState value, $Res Function(PaginatedMangaState) _then) = _$PaginatedMangaStateCopyWithImpl;
@useResult
$Res call({
 int page, bool hasMore
});




}
/// @nodoc
class _$PaginatedMangaStateCopyWithImpl<$Res>
    implements $PaginatedMangaStateCopyWith<$Res> {
  _$PaginatedMangaStateCopyWithImpl(this._self, this._then);

  final PaginatedMangaState _self;
  final $Res Function(PaginatedMangaState) _then;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedMangaState].
extension PaginatedMangaStatePatterns on PaginatedMangaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaginatedMangaLoading value)?  loading,TResult Function( PaginatedMangaLoaded value)?  loaded,TResult Function( PaginatedMangaEmpty value)?  empty,TResult Function( PaginatedMangaError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaginatedMangaLoading() when loading != null:
return loading(_that);case PaginatedMangaLoaded() when loaded != null:
return loaded(_that);case PaginatedMangaEmpty() when empty != null:
return empty(_that);case PaginatedMangaError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaginatedMangaLoading value)  loading,required TResult Function( PaginatedMangaLoaded value)  loaded,required TResult Function( PaginatedMangaEmpty value)  empty,required TResult Function( PaginatedMangaError value)  error,}){
final _that = this;
switch (_that) {
case PaginatedMangaLoading():
return loading(_that);case PaginatedMangaLoaded():
return loaded(_that);case PaginatedMangaEmpty():
return empty(_that);case PaginatedMangaError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaginatedMangaLoading value)?  loading,TResult? Function( PaginatedMangaLoaded value)?  loaded,TResult? Function( PaginatedMangaEmpty value)?  empty,TResult? Function( PaginatedMangaError value)?  error,}){
final _that = this;
switch (_that) {
case PaginatedMangaLoading() when loading != null:
return loading(_that);case PaginatedMangaLoaded() when loaded != null:
return loaded(_that);case PaginatedMangaEmpty() when empty != null:
return empty(_that);case PaginatedMangaError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  bool hasMore)?  loading,TResult Function( int page,  bool hasMore,  List<SourceManga> mangas)?  loaded,TResult Function( int page,  bool hasMore)?  empty,TResult Function( int page,  bool hasMore,  String? message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaginatedMangaLoading() when loading != null:
return loading(_that.page,_that.hasMore);case PaginatedMangaLoaded() when loaded != null:
return loaded(_that.page,_that.hasMore,_that.mangas);case PaginatedMangaEmpty() when empty != null:
return empty(_that.page,_that.hasMore);case PaginatedMangaError() when error != null:
return error(_that.page,_that.hasMore,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  bool hasMore)  loading,required TResult Function( int page,  bool hasMore,  List<SourceManga> mangas)  loaded,required TResult Function( int page,  bool hasMore)  empty,required TResult Function( int page,  bool hasMore,  String? message)  error,}) {final _that = this;
switch (_that) {
case PaginatedMangaLoading():
return loading(_that.page,_that.hasMore);case PaginatedMangaLoaded():
return loaded(_that.page,_that.hasMore,_that.mangas);case PaginatedMangaEmpty():
return empty(_that.page,_that.hasMore);case PaginatedMangaError():
return error(_that.page,_that.hasMore,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  bool hasMore)?  loading,TResult? Function( int page,  bool hasMore,  List<SourceManga> mangas)?  loaded,TResult? Function( int page,  bool hasMore)?  empty,TResult? Function( int page,  bool hasMore,  String? message)?  error,}) {final _that = this;
switch (_that) {
case PaginatedMangaLoading() when loading != null:
return loading(_that.page,_that.hasMore);case PaginatedMangaLoaded() when loaded != null:
return loaded(_that.page,_that.hasMore,_that.mangas);case PaginatedMangaEmpty() when empty != null:
return empty(_that.page,_that.hasMore);case PaginatedMangaError() when error != null:
return error(_that.page,_that.hasMore,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PaginatedMangaLoading extends PaginatedMangaState {
  const PaginatedMangaLoading({required this.page, this.hasMore = true}): super._();
  

@override final  int page;
@override@JsonKey() final  bool hasMore;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMangaLoadingCopyWith<PaginatedMangaLoading> get copyWith => _$PaginatedMangaLoadingCopyWithImpl<PaginatedMangaLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMangaLoading&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,page,hasMore);

@override
String toString() {
  return 'PaginatedMangaState.loading(page: $page, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $PaginatedMangaLoadingCopyWith<$Res> implements $PaginatedMangaStateCopyWith<$Res> {
  factory $PaginatedMangaLoadingCopyWith(PaginatedMangaLoading value, $Res Function(PaginatedMangaLoading) _then) = _$PaginatedMangaLoadingCopyWithImpl;
@override @useResult
$Res call({
 int page, bool hasMore
});




}
/// @nodoc
class _$PaginatedMangaLoadingCopyWithImpl<$Res>
    implements $PaginatedMangaLoadingCopyWith<$Res> {
  _$PaginatedMangaLoadingCopyWithImpl(this._self, this._then);

  final PaginatedMangaLoading _self;
  final $Res Function(PaginatedMangaLoading) _then;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? hasMore = null,}) {
  return _then(PaginatedMangaLoading(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PaginatedMangaLoaded extends PaginatedMangaState {
  const PaginatedMangaLoaded({required this.page, required this.hasMore, required final  List<SourceManga> mangas}): _mangas = mangas,super._();
  

@override final  int page;
@override final  bool hasMore;
 final  List<SourceManga> _mangas;
 List<SourceManga> get mangas {
  if (_mangas is EqualUnmodifiableListView) return _mangas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mangas);
}


/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMangaLoadedCopyWith<PaginatedMangaLoaded> get copyWith => _$PaginatedMangaLoadedCopyWithImpl<PaginatedMangaLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMangaLoaded&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._mangas, _mangas));
}


@override
int get hashCode => Object.hash(runtimeType,page,hasMore,const DeepCollectionEquality().hash(_mangas));

@override
String toString() {
  return 'PaginatedMangaState.loaded(page: $page, hasMore: $hasMore, mangas: $mangas)';
}


}

/// @nodoc
abstract mixin class $PaginatedMangaLoadedCopyWith<$Res> implements $PaginatedMangaStateCopyWith<$Res> {
  factory $PaginatedMangaLoadedCopyWith(PaginatedMangaLoaded value, $Res Function(PaginatedMangaLoaded) _then) = _$PaginatedMangaLoadedCopyWithImpl;
@override @useResult
$Res call({
 int page, bool hasMore, List<SourceManga> mangas
});




}
/// @nodoc
class _$PaginatedMangaLoadedCopyWithImpl<$Res>
    implements $PaginatedMangaLoadedCopyWith<$Res> {
  _$PaginatedMangaLoadedCopyWithImpl(this._self, this._then);

  final PaginatedMangaLoaded _self;
  final $Res Function(PaginatedMangaLoaded) _then;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? hasMore = null,Object? mangas = null,}) {
  return _then(PaginatedMangaLoaded(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,mangas: null == mangas ? _self._mangas : mangas // ignore: cast_nullable_to_non_nullable
as List<SourceManga>,
  ));
}


}

/// @nodoc


class PaginatedMangaEmpty extends PaginatedMangaState {
  const PaginatedMangaEmpty({required this.page, this.hasMore = false}): super._();
  

@override final  int page;
@override@JsonKey() final  bool hasMore;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMangaEmptyCopyWith<PaginatedMangaEmpty> get copyWith => _$PaginatedMangaEmptyCopyWithImpl<PaginatedMangaEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMangaEmpty&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,page,hasMore);

@override
String toString() {
  return 'PaginatedMangaState.empty(page: $page, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $PaginatedMangaEmptyCopyWith<$Res> implements $PaginatedMangaStateCopyWith<$Res> {
  factory $PaginatedMangaEmptyCopyWith(PaginatedMangaEmpty value, $Res Function(PaginatedMangaEmpty) _then) = _$PaginatedMangaEmptyCopyWithImpl;
@override @useResult
$Res call({
 int page, bool hasMore
});




}
/// @nodoc
class _$PaginatedMangaEmptyCopyWithImpl<$Res>
    implements $PaginatedMangaEmptyCopyWith<$Res> {
  _$PaginatedMangaEmptyCopyWithImpl(this._self, this._then);

  final PaginatedMangaEmpty _self;
  final $Res Function(PaginatedMangaEmpty) _then;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? hasMore = null,}) {
  return _then(PaginatedMangaEmpty(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PaginatedMangaError extends PaginatedMangaState {
  const PaginatedMangaError({required this.page, required this.hasMore, this.message}): super._();
  

@override final  int page;
@override final  bool hasMore;
 final  String? message;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMangaErrorCopyWith<PaginatedMangaError> get copyWith => _$PaginatedMangaErrorCopyWithImpl<PaginatedMangaError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMangaError&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,page,hasMore,message);

@override
String toString() {
  return 'PaginatedMangaState.error(page: $page, hasMore: $hasMore, message: $message)';
}


}

/// @nodoc
abstract mixin class $PaginatedMangaErrorCopyWith<$Res> implements $PaginatedMangaStateCopyWith<$Res> {
  factory $PaginatedMangaErrorCopyWith(PaginatedMangaError value, $Res Function(PaginatedMangaError) _then) = _$PaginatedMangaErrorCopyWithImpl;
@override @useResult
$Res call({
 int page, bool hasMore, String? message
});




}
/// @nodoc
class _$PaginatedMangaErrorCopyWithImpl<$Res>
    implements $PaginatedMangaErrorCopyWith<$Res> {
  _$PaginatedMangaErrorCopyWithImpl(this._self, this._then);

  final PaginatedMangaError _self;
  final $Res Function(PaginatedMangaError) _then;

/// Create a copy of PaginatedMangaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? hasMore = null,Object? message = freezed,}) {
  return _then(PaginatedMangaError(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
