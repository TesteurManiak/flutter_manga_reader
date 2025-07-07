// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LibraryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState()';
}


}

/// @nodoc
class $LibraryStateCopyWith<$Res>  {
$LibraryStateCopyWith(LibraryState _, $Res Function(LibraryState) __);
}


/// @nodoc


class LibraryLoading extends LibraryState {
  const LibraryLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState.loading()';
}


}




/// @nodoc


class LibraryLoaded extends LibraryState {
  const LibraryLoaded({required final  List<Manga> mangas}): _mangas = mangas,super._();
  

 final  List<Manga> _mangas;
 List<Manga> get mangas {
  if (_mangas is EqualUnmodifiableListView) return _mangas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mangas);
}


/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryLoadedCopyWith<LibraryLoaded> get copyWith => _$LibraryLoadedCopyWithImpl<LibraryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryLoaded&&const DeepCollectionEquality().equals(other._mangas, _mangas));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mangas));

@override
String toString() {
  return 'LibraryState.loaded(mangas: $mangas)';
}


}

/// @nodoc
abstract mixin class $LibraryLoadedCopyWith<$Res> implements $LibraryStateCopyWith<$Res> {
  factory $LibraryLoadedCopyWith(LibraryLoaded value, $Res Function(LibraryLoaded) _then) = _$LibraryLoadedCopyWithImpl;
@useResult
$Res call({
 List<Manga> mangas
});




}
/// @nodoc
class _$LibraryLoadedCopyWithImpl<$Res>
    implements $LibraryLoadedCopyWith<$Res> {
  _$LibraryLoadedCopyWithImpl(this._self, this._then);

  final LibraryLoaded _self;
  final $Res Function(LibraryLoaded) _then;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mangas = null,}) {
  return _then(LibraryLoaded(
mangas: null == mangas ? _self._mangas : mangas // ignore: cast_nullable_to_non_nullable
as List<Manga>,
  ));
}


}

/// @nodoc


class LibraryEmpty extends LibraryState {
  const LibraryEmpty(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState.empty()';
}


}




/// @nodoc


class LibraryError extends LibraryState {
  const LibraryError({required this.message}): super._();
  

 final  String message;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryErrorCopyWith<LibraryError> get copyWith => _$LibraryErrorCopyWithImpl<LibraryError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LibraryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $LibraryErrorCopyWith<$Res> implements $LibraryStateCopyWith<$Res> {
  factory $LibraryErrorCopyWith(LibraryError value, $Res Function(LibraryError) _then) = _$LibraryErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LibraryErrorCopyWithImpl<$Res>
    implements $LibraryErrorCopyWith<$Res> {
  _$LibraryErrorCopyWithImpl(this._self, this._then);

  final LibraryError _self;
  final $Res Function(LibraryError) _then;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LibraryError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
