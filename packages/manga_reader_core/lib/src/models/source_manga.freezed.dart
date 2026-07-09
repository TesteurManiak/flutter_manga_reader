// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SourceManga {

 String get url; String get title; String? get artist; String? get author; String? get description; String? get genre; MangaStatus get status; String? get thumbnailUrl; bool get initialized; UpdateStrategy get updateStrategy; String get sourceId;
/// Create a copy of SourceManga
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceMangaCopyWith<SourceManga> get copyWith => _$SourceMangaCopyWithImpl<SourceManga>(this as SourceManga, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceManga&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.initialized, initialized) || other.initialized == initialized)&&(identical(other.updateStrategy, updateStrategy) || other.updateStrategy == updateStrategy)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,title,artist,author,description,genre,status,thumbnailUrl,initialized,updateStrategy,sourceId);

@override
String toString() {
  return 'SourceManga(url: $url, title: $title, artist: $artist, author: $author, description: $description, genre: $genre, status: $status, thumbnailUrl: $thumbnailUrl, initialized: $initialized, updateStrategy: $updateStrategy, sourceId: $sourceId)';
}


}

/// @nodoc
abstract mixin class $SourceMangaCopyWith<$Res>  {
  factory $SourceMangaCopyWith(SourceManga value, $Res Function(SourceManga) _then) = _$SourceMangaCopyWithImpl;
@useResult
$Res call({
 String url, String title, String? artist, String? author, String? description, String? genre, MangaStatus status, String? thumbnailUrl, bool initialized, UpdateStrategy updateStrategy, String sourceId
});




}
/// @nodoc
class _$SourceMangaCopyWithImpl<$Res>
    implements $SourceMangaCopyWith<$Res> {
  _$SourceMangaCopyWithImpl(this._self, this._then);

  final SourceManga _self;
  final $Res Function(SourceManga) _then;

/// Create a copy of SourceManga
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? title = null,Object? artist = freezed,Object? author = freezed,Object? description = freezed,Object? genre = freezed,Object? status = null,Object? thumbnailUrl = freezed,Object? initialized = null,Object? updateStrategy = null,Object? sourceId = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MangaStatus,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,initialized: null == initialized ? _self.initialized : initialized // ignore: cast_nullable_to_non_nullable
as bool,updateStrategy: null == updateStrategy ? _self.updateStrategy : updateStrategy // ignore: cast_nullable_to_non_nullable
as UpdateStrategy,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SourceManga].
extension SourceMangaPatterns on SourceManga {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SourceManga value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SourceManga() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SourceManga value)  $default,){
final _that = this;
switch (_that) {
case _SourceManga():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SourceManga value)?  $default,){
final _that = this;
switch (_that) {
case _SourceManga() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String title,  String? artist,  String? author,  String? description,  String? genre,  MangaStatus status,  String? thumbnailUrl,  bool initialized,  UpdateStrategy updateStrategy,  String sourceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SourceManga() when $default != null:
return $default(_that.url,_that.title,_that.artist,_that.author,_that.description,_that.genre,_that.status,_that.thumbnailUrl,_that.initialized,_that.updateStrategy,_that.sourceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String title,  String? artist,  String? author,  String? description,  String? genre,  MangaStatus status,  String? thumbnailUrl,  bool initialized,  UpdateStrategy updateStrategy,  String sourceId)  $default,) {final _that = this;
switch (_that) {
case _SourceManga():
return $default(_that.url,_that.title,_that.artist,_that.author,_that.description,_that.genre,_that.status,_that.thumbnailUrl,_that.initialized,_that.updateStrategy,_that.sourceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String title,  String? artist,  String? author,  String? description,  String? genre,  MangaStatus status,  String? thumbnailUrl,  bool initialized,  UpdateStrategy updateStrategy,  String sourceId)?  $default,) {final _that = this;
switch (_that) {
case _SourceManga() when $default != null:
return $default(_that.url,_that.title,_that.artist,_that.author,_that.description,_that.genre,_that.status,_that.thumbnailUrl,_that.initialized,_that.updateStrategy,_that.sourceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _SourceManga extends SourceManga {
  const _SourceManga({required this.url, required this.title, this.artist, this.author, this.description, this.genre, this.status = MangaStatus.unknown, this.thumbnailUrl, this.initialized = false, this.updateStrategy = UpdateStrategy.alwaysUpdate, required this.sourceId}): super._();
  factory _SourceManga.fromJson(Map<String, dynamic> json) => _$SourceMangaFromJson(json);

@override final  String url;
@override final  String title;
@override final  String? artist;
@override final  String? author;
@override final  String? description;
@override final  String? genre;
@override@JsonKey() final  MangaStatus status;
@override final  String? thumbnailUrl;
@override@JsonKey() final  bool initialized;
@override@JsonKey() final  UpdateStrategy updateStrategy;
@override final  String sourceId;

/// Create a copy of SourceManga
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceMangaCopyWith<_SourceManga> get copyWith => __$SourceMangaCopyWithImpl<_SourceManga>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceManga&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.initialized, initialized) || other.initialized == initialized)&&(identical(other.updateStrategy, updateStrategy) || other.updateStrategy == updateStrategy)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,title,artist,author,description,genre,status,thumbnailUrl,initialized,updateStrategy,sourceId);

@override
String toString() {
  return 'SourceManga(url: $url, title: $title, artist: $artist, author: $author, description: $description, genre: $genre, status: $status, thumbnailUrl: $thumbnailUrl, initialized: $initialized, updateStrategy: $updateStrategy, sourceId: $sourceId)';
}


}

/// @nodoc
abstract mixin class _$SourceMangaCopyWith<$Res> implements $SourceMangaCopyWith<$Res> {
  factory _$SourceMangaCopyWith(_SourceManga value, $Res Function(_SourceManga) _then) = __$SourceMangaCopyWithImpl;
@override @useResult
$Res call({
 String url, String title, String? artist, String? author, String? description, String? genre, MangaStatus status, String? thumbnailUrl, bool initialized, UpdateStrategy updateStrategy, String sourceId
});




}
/// @nodoc
class __$SourceMangaCopyWithImpl<$Res>
    implements _$SourceMangaCopyWith<$Res> {
  __$SourceMangaCopyWithImpl(this._self, this._then);

  final _SourceManga _self;
  final $Res Function(_SourceManga) _then;

/// Create a copy of SourceManga
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? title = null,Object? artist = freezed,Object? author = freezed,Object? description = freezed,Object? genre = freezed,Object? status = null,Object? thumbnailUrl = freezed,Object? initialized = null,Object? updateStrategy = null,Object? sourceId = null,}) {
  return _then(_SourceManga(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MangaStatus,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,initialized: null == initialized ? _self.initialized : initialized // ignore: cast_nullable_to_non_nullable
as bool,updateStrategy: null == updateStrategy ? _self.updateStrategy : updateStrategy // ignore: cast_nullable_to_non_nullable
as UpdateStrategy,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
