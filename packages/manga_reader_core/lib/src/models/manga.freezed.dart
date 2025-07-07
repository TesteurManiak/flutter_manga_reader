// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Manga {

 int get id; String get sourceId; bool get favorite; int get fetchInterval; DateTime? get dateAdded; String get url; String get title; String? get artist; String? get author; String? get description; List<String>? get genres; MangaStatus get status; String? get thumbnailUrl; UpdateStrategy get updateStrategy; bool get initialized; DateTime? get lastModifiedAt;
/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaCopyWith<Manga> get copyWith => _$MangaCopyWithImpl<Manga>(this as Manga, _$identity);

  /// Serializes this Manga to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Manga&&(identical(other.id, id) || other.id == id)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.fetchInterval, fetchInterval) || other.fetchInterval == fetchInterval)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.updateStrategy, updateStrategy) || other.updateStrategy == updateStrategy)&&(identical(other.initialized, initialized) || other.initialized == initialized)&&(identical(other.lastModifiedAt, lastModifiedAt) || other.lastModifiedAt == lastModifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sourceId,favorite,fetchInterval,dateAdded,url,title,artist,author,description,const DeepCollectionEquality().hash(genres),status,thumbnailUrl,updateStrategy,initialized,lastModifiedAt);

@override
String toString() {
  return 'Manga(id: $id, sourceId: $sourceId, favorite: $favorite, fetchInterval: $fetchInterval, dateAdded: $dateAdded, url: $url, title: $title, artist: $artist, author: $author, description: $description, genres: $genres, status: $status, thumbnailUrl: $thumbnailUrl, updateStrategy: $updateStrategy, initialized: $initialized, lastModifiedAt: $lastModifiedAt)';
}


}

/// @nodoc
abstract mixin class $MangaCopyWith<$Res>  {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) _then) = _$MangaCopyWithImpl;
@useResult
$Res call({
 int id, String sourceId, bool favorite, int fetchInterval, DateTime? dateAdded, String url, String title, String? artist, String? author, String? description, List<String>? genres, MangaStatus status, String? thumbnailUrl, UpdateStrategy updateStrategy, bool initialized, DateTime? lastModifiedAt
});




}
/// @nodoc
class _$MangaCopyWithImpl<$Res>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(this._self, this._then);

  final Manga _self;
  final $Res Function(Manga) _then;

/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sourceId = null,Object? favorite = null,Object? fetchInterval = null,Object? dateAdded = freezed,Object? url = null,Object? title = null,Object? artist = freezed,Object? author = freezed,Object? description = freezed,Object? genres = freezed,Object? status = null,Object? thumbnailUrl = freezed,Object? updateStrategy = null,Object? initialized = null,Object? lastModifiedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,fetchInterval: null == fetchInterval ? _self.fetchInterval : fetchInterval // ignore: cast_nullable_to_non_nullable
as int,dateAdded: freezed == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as DateTime?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MangaStatus,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,updateStrategy: null == updateStrategy ? _self.updateStrategy : updateStrategy // ignore: cast_nullable_to_non_nullable
as UpdateStrategy,initialized: null == initialized ? _self.initialized : initialized // ignore: cast_nullable_to_non_nullable
as bool,lastModifiedAt: freezed == lastModifiedAt ? _self.lastModifiedAt : lastModifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Manga extends Manga {
  const _Manga({required this.id, required this.sourceId, this.favorite = false, this.fetchInterval = 0, this.dateAdded, this.url = '', this.title = '', this.artist, this.author, this.description, final  List<String>? genres, this.status = MangaStatus.unknown, this.thumbnailUrl, this.updateStrategy = UpdateStrategy.alwaysUpdate, this.initialized = false, this.lastModifiedAt}): _genres = genres,super._();
  factory _Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

@override final  int id;
@override final  String sourceId;
@override@JsonKey() final  bool favorite;
@override@JsonKey() final  int fetchInterval;
@override final  DateTime? dateAdded;
@override@JsonKey() final  String url;
@override@JsonKey() final  String title;
@override final  String? artist;
@override final  String? author;
@override final  String? description;
 final  List<String>? _genres;
@override List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  MangaStatus status;
@override final  String? thumbnailUrl;
@override@JsonKey() final  UpdateStrategy updateStrategy;
@override@JsonKey() final  bool initialized;
@override final  DateTime? lastModifiedAt;

/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaCopyWith<_Manga> get copyWith => __$MangaCopyWithImpl<_Manga>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Manga&&(identical(other.id, id) || other.id == id)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.fetchInterval, fetchInterval) || other.fetchInterval == fetchInterval)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.status, status) || other.status == status)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.updateStrategy, updateStrategy) || other.updateStrategy == updateStrategy)&&(identical(other.initialized, initialized) || other.initialized == initialized)&&(identical(other.lastModifiedAt, lastModifiedAt) || other.lastModifiedAt == lastModifiedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sourceId,favorite,fetchInterval,dateAdded,url,title,artist,author,description,const DeepCollectionEquality().hash(_genres),status,thumbnailUrl,updateStrategy,initialized,lastModifiedAt);

@override
String toString() {
  return 'Manga(id: $id, sourceId: $sourceId, favorite: $favorite, fetchInterval: $fetchInterval, dateAdded: $dateAdded, url: $url, title: $title, artist: $artist, author: $author, description: $description, genres: $genres, status: $status, thumbnailUrl: $thumbnailUrl, updateStrategy: $updateStrategy, initialized: $initialized, lastModifiedAt: $lastModifiedAt)';
}


}

/// @nodoc
abstract mixin class _$MangaCopyWith<$Res> implements $MangaCopyWith<$Res> {
  factory _$MangaCopyWith(_Manga value, $Res Function(_Manga) _then) = __$MangaCopyWithImpl;
@override @useResult
$Res call({
 int id, String sourceId, bool favorite, int fetchInterval, DateTime? dateAdded, String url, String title, String? artist, String? author, String? description, List<String>? genres, MangaStatus status, String? thumbnailUrl, UpdateStrategy updateStrategy, bool initialized, DateTime? lastModifiedAt
});




}
/// @nodoc
class __$MangaCopyWithImpl<$Res>
    implements _$MangaCopyWith<$Res> {
  __$MangaCopyWithImpl(this._self, this._then);

  final _Manga _self;
  final $Res Function(_Manga) _then;

/// Create a copy of Manga
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sourceId = null,Object? favorite = null,Object? fetchInterval = null,Object? dateAdded = freezed,Object? url = null,Object? title = null,Object? artist = freezed,Object? author = freezed,Object? description = freezed,Object? genres = freezed,Object? status = null,Object? thumbnailUrl = freezed,Object? updateStrategy = null,Object? initialized = null,Object? lastModifiedAt = freezed,}) {
  return _then(_Manga(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sourceId: null == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,fetchInterval: null == fetchInterval ? _self.fetchInterval : fetchInterval // ignore: cast_nullable_to_non_nullable
as int,dateAdded: freezed == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as DateTime?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MangaStatus,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,updateStrategy: null == updateStrategy ? _self.updateStrategy : updateStrategy // ignore: cast_nullable_to_non_nullable
as UpdateStrategy,initialized: null == initialized ? _self.initialized : initialized // ignore: cast_nullable_to_non_nullable
as bool,lastModifiedAt: freezed == lastModifiedAt ? _self.lastModifiedAt : lastModifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
