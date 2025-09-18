// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailsState {

 List<Chapter> get selectedChapters; bool get selectionMode;
/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsStateCopyWith<DetailsState> get copyWith => _$DetailsStateCopyWithImpl<DetailsState>(this as DetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsState&&const DeepCollectionEquality().equals(other.selectedChapters, selectedChapters)&&(identical(other.selectionMode, selectionMode) || other.selectionMode == selectionMode));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedChapters),selectionMode);

@override
String toString() {
  return 'DetailsState(selectedChapters: $selectedChapters, selectionMode: $selectionMode)';
}


}

/// @nodoc
abstract mixin class $DetailsStateCopyWith<$Res>  {
  factory $DetailsStateCopyWith(DetailsState value, $Res Function(DetailsState) _then) = _$DetailsStateCopyWithImpl;
@useResult
$Res call({
 List<Chapter> selectedChapters, bool selectionMode
});




}
/// @nodoc
class _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._self, this._then);

  final DetailsState _self;
  final $Res Function(DetailsState) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedChapters = null,Object? selectionMode = null,}) {
  return _then(_self.copyWith(
selectedChapters: null == selectedChapters ? _self.selectedChapters : selectedChapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,selectionMode: null == selectionMode ? _self.selectionMode : selectionMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailsState].
extension DetailsStatePatterns on DetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DetailsLoading value)?  loading,TResult Function( DetailsLoaded value)?  loaded,TResult Function( DetailsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DetailsLoading() when loading != null:
return loading(_that);case DetailsLoaded() when loaded != null:
return loaded(_that);case DetailsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DetailsLoading value)  loading,required TResult Function( DetailsLoaded value)  loaded,required TResult Function( DetailsError value)  error,}){
final _that = this;
switch (_that) {
case DetailsLoading():
return loading(_that);case DetailsLoaded():
return loaded(_that);case DetailsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DetailsLoading value)?  loading,TResult? Function( DetailsLoaded value)?  loaded,TResult? Function( DetailsError value)?  error,}){
final _that = this;
switch (_that) {
case DetailsLoading() when loading != null:
return loading(_that);case DetailsLoaded() when loaded != null:
return loaded(_that);case DetailsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Chapter> selectedChapters,  bool selectionMode)?  loading,TResult Function( List<Chapter> selectedChapters,  bool selectionMode)?  loaded,TResult Function( List<Chapter> selectedChapters,  String? error,  bool selectionMode)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DetailsLoading() when loading != null:
return loading(_that.selectedChapters,_that.selectionMode);case DetailsLoaded() when loaded != null:
return loaded(_that.selectedChapters,_that.selectionMode);case DetailsError() when error != null:
return error(_that.selectedChapters,_that.error,_that.selectionMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Chapter> selectedChapters,  bool selectionMode)  loading,required TResult Function( List<Chapter> selectedChapters,  bool selectionMode)  loaded,required TResult Function( List<Chapter> selectedChapters,  String? error,  bool selectionMode)  error,}) {final _that = this;
switch (_that) {
case DetailsLoading():
return loading(_that.selectedChapters,_that.selectionMode);case DetailsLoaded():
return loaded(_that.selectedChapters,_that.selectionMode);case DetailsError():
return error(_that.selectedChapters,_that.error,_that.selectionMode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Chapter> selectedChapters,  bool selectionMode)?  loading,TResult? Function( List<Chapter> selectedChapters,  bool selectionMode)?  loaded,TResult? Function( List<Chapter> selectedChapters,  String? error,  bool selectionMode)?  error,}) {final _that = this;
switch (_that) {
case DetailsLoading() when loading != null:
return loading(_that.selectedChapters,_that.selectionMode);case DetailsLoaded() when loaded != null:
return loaded(_that.selectedChapters,_that.selectionMode);case DetailsError() when error != null:
return error(_that.selectedChapters,_that.error,_that.selectionMode);case _:
  return null;

}
}

}

/// @nodoc


class DetailsLoading extends DetailsState {
  const DetailsLoading({final  List<Chapter> selectedChapters = const <Chapter>[], this.selectionMode = false}): _selectedChapters = selectedChapters,super._();
  

 final  List<Chapter> _selectedChapters;
@override@JsonKey() List<Chapter> get selectedChapters {
  if (_selectedChapters is EqualUnmodifiableListView) return _selectedChapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedChapters);
}

@override@JsonKey() final  bool selectionMode;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsLoadingCopyWith<DetailsLoading> get copyWith => _$DetailsLoadingCopyWithImpl<DetailsLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsLoading&&const DeepCollectionEquality().equals(other._selectedChapters, _selectedChapters)&&(identical(other.selectionMode, selectionMode) || other.selectionMode == selectionMode));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedChapters),selectionMode);

@override
String toString() {
  return 'DetailsState.loading(selectedChapters: $selectedChapters, selectionMode: $selectionMode)';
}


}

/// @nodoc
abstract mixin class $DetailsLoadingCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory $DetailsLoadingCopyWith(DetailsLoading value, $Res Function(DetailsLoading) _then) = _$DetailsLoadingCopyWithImpl;
@override @useResult
$Res call({
 List<Chapter> selectedChapters, bool selectionMode
});




}
/// @nodoc
class _$DetailsLoadingCopyWithImpl<$Res>
    implements $DetailsLoadingCopyWith<$Res> {
  _$DetailsLoadingCopyWithImpl(this._self, this._then);

  final DetailsLoading _self;
  final $Res Function(DetailsLoading) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedChapters = null,Object? selectionMode = null,}) {
  return _then(DetailsLoading(
selectedChapters: null == selectedChapters ? _self._selectedChapters : selectedChapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,selectionMode: null == selectionMode ? _self.selectionMode : selectionMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DetailsLoaded extends DetailsState {
  const DetailsLoaded({final  List<Chapter> selectedChapters = const <Chapter>[], this.selectionMode = false}): _selectedChapters = selectedChapters,super._();
  

 final  List<Chapter> _selectedChapters;
@override@JsonKey() List<Chapter> get selectedChapters {
  if (_selectedChapters is EqualUnmodifiableListView) return _selectedChapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedChapters);
}

@override@JsonKey() final  bool selectionMode;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsLoadedCopyWith<DetailsLoaded> get copyWith => _$DetailsLoadedCopyWithImpl<DetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsLoaded&&const DeepCollectionEquality().equals(other._selectedChapters, _selectedChapters)&&(identical(other.selectionMode, selectionMode) || other.selectionMode == selectionMode));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedChapters),selectionMode);

@override
String toString() {
  return 'DetailsState.loaded(selectedChapters: $selectedChapters, selectionMode: $selectionMode)';
}


}

/// @nodoc
abstract mixin class $DetailsLoadedCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory $DetailsLoadedCopyWith(DetailsLoaded value, $Res Function(DetailsLoaded) _then) = _$DetailsLoadedCopyWithImpl;
@override @useResult
$Res call({
 List<Chapter> selectedChapters, bool selectionMode
});




}
/// @nodoc
class _$DetailsLoadedCopyWithImpl<$Res>
    implements $DetailsLoadedCopyWith<$Res> {
  _$DetailsLoadedCopyWithImpl(this._self, this._then);

  final DetailsLoaded _self;
  final $Res Function(DetailsLoaded) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedChapters = null,Object? selectionMode = null,}) {
  return _then(DetailsLoaded(
selectedChapters: null == selectedChapters ? _self._selectedChapters : selectedChapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,selectionMode: null == selectionMode ? _self.selectionMode : selectionMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DetailsError extends DetailsState {
  const DetailsError({final  List<Chapter> selectedChapters = const <Chapter>[], this.error, this.selectionMode = false}): _selectedChapters = selectedChapters,super._();
  

 final  List<Chapter> _selectedChapters;
@override@JsonKey() List<Chapter> get selectedChapters {
  if (_selectedChapters is EqualUnmodifiableListView) return _selectedChapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedChapters);
}

 final  String? error;
@override@JsonKey() final  bool selectionMode;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsErrorCopyWith<DetailsError> get copyWith => _$DetailsErrorCopyWithImpl<DetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsError&&const DeepCollectionEquality().equals(other._selectedChapters, _selectedChapters)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectionMode, selectionMode) || other.selectionMode == selectionMode));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedChapters),error,selectionMode);

@override
String toString() {
  return 'DetailsState.error(selectedChapters: $selectedChapters, error: $error, selectionMode: $selectionMode)';
}


}

/// @nodoc
abstract mixin class $DetailsErrorCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory $DetailsErrorCopyWith(DetailsError value, $Res Function(DetailsError) _then) = _$DetailsErrorCopyWithImpl;
@override @useResult
$Res call({
 List<Chapter> selectedChapters, String? error, bool selectionMode
});




}
/// @nodoc
class _$DetailsErrorCopyWithImpl<$Res>
    implements $DetailsErrorCopyWith<$Res> {
  _$DetailsErrorCopyWithImpl(this._self, this._then);

  final DetailsError _self;
  final $Res Function(DetailsError) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedChapters = null,Object? error = freezed,Object? selectionMode = null,}) {
  return _then(DetailsError(
selectedChapters: null == selectedChapters ? _self._selectedChapters : selectedChapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectionMode: null == selectionMode ? _self.selectionMode : selectionMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
