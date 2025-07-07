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
mixin _$MangaListResponse {

 List<MangaData> get data; int get limit; int get offset; int get total;
/// Create a copy of MangaListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaListResponseCopyWith<MangaListResponse> get copyWith => _$MangaListResponseCopyWithImpl<MangaListResponse>(this as MangaListResponse, _$identity);

  /// Serializes this MangaListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaListResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),limit,offset,total);

@override
String toString() {
  return 'MangaListResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class $MangaListResponseCopyWith<$Res>  {
  factory $MangaListResponseCopyWith(MangaListResponse value, $Res Function(MangaListResponse) _then) = _$MangaListResponseCopyWithImpl;
@useResult
$Res call({
 List<MangaData> data, int limit, int offset, int total
});




}
/// @nodoc
class _$MangaListResponseCopyWithImpl<$Res>
    implements $MangaListResponseCopyWith<$Res> {
  _$MangaListResponseCopyWithImpl(this._self, this._then);

  final MangaListResponse _self;
  final $Res Function(MangaListResponse) _then;

/// Create a copy of MangaListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MangaData>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MangaListResponse extends MangaListResponse {
  const _MangaListResponse({final  List<MangaData> data = const <MangaData>[], this.limit = 0, this.offset = 0, this.total = 0}): _data = data,super._();
  factory _MangaListResponse.fromJson(Map<String, dynamic> json) => _$MangaListResponseFromJson(json);

 final  List<MangaData> _data;
@override@JsonKey() List<MangaData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int limit;
@override@JsonKey() final  int offset;
@override@JsonKey() final  int total;

/// Create a copy of MangaListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaListResponseCopyWith<_MangaListResponse> get copyWith => __$MangaListResponseCopyWithImpl<_MangaListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MangaListResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),limit,offset,total);

@override
String toString() {
  return 'MangaListResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class _$MangaListResponseCopyWith<$Res> implements $MangaListResponseCopyWith<$Res> {
  factory _$MangaListResponseCopyWith(_MangaListResponse value, $Res Function(_MangaListResponse) _then) = __$MangaListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MangaData> data, int limit, int offset, int total
});




}
/// @nodoc
class __$MangaListResponseCopyWithImpl<$Res>
    implements _$MangaListResponseCopyWith<$Res> {
  __$MangaListResponseCopyWithImpl(this._self, this._then);

  final _MangaListResponse _self;
  final $Res Function(_MangaListResponse) _then;

/// Create a copy of MangaListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_MangaListResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MangaData>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MangaResponse {

 MangaData get data;
/// Create a copy of MangaResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaResponseCopyWith<MangaResponse> get copyWith => _$MangaResponseCopyWithImpl<MangaResponse>(this as MangaResponse, _$identity);

  /// Serializes this MangaResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MangaResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $MangaResponseCopyWith<$Res>  {
  factory $MangaResponseCopyWith(MangaResponse value, $Res Function(MangaResponse) _then) = _$MangaResponseCopyWithImpl;
@useResult
$Res call({
 MangaData data
});


$MangaDataCopyWith<$Res> get data;

}
/// @nodoc
class _$MangaResponseCopyWithImpl<$Res>
    implements $MangaResponseCopyWith<$Res> {
  _$MangaResponseCopyWithImpl(this._self, this._then);

  final MangaResponse _self;
  final $Res Function(MangaResponse) _then;

/// Create a copy of MangaResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MangaData,
  ));
}
/// Create a copy of MangaResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MangaDataCopyWith<$Res> get data {
  
  return $MangaDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _MangaResponse implements MangaResponse {
  const _MangaResponse({required this.data});
  factory _MangaResponse.fromJson(Map<String, dynamic> json) => _$MangaResponseFromJson(json);

@override final  MangaData data;

/// Create a copy of MangaResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaResponseCopyWith<_MangaResponse> get copyWith => __$MangaResponseCopyWithImpl<_MangaResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MangaResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MangaResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$MangaResponseCopyWith<$Res> implements $MangaResponseCopyWith<$Res> {
  factory _$MangaResponseCopyWith(_MangaResponse value, $Res Function(_MangaResponse) _then) = __$MangaResponseCopyWithImpl;
@override @useResult
$Res call({
 MangaData data
});


@override $MangaDataCopyWith<$Res> get data;

}
/// @nodoc
class __$MangaResponseCopyWithImpl<$Res>
    implements _$MangaResponseCopyWith<$Res> {
  __$MangaResponseCopyWithImpl(this._self, this._then);

  final _MangaResponse _self;
  final $Res Function(_MangaResponse) _then;

/// Create a copy of MangaResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_MangaResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MangaData,
  ));
}

/// Create a copy of MangaResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MangaDataCopyWith<$Res> get data {
  
  return $MangaDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$MangaData {

 String get id; MangaAttributes get attributes; List<Relationship> get relationships;
/// Create a copy of MangaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaDataCopyWith<MangaData> get copyWith => _$MangaDataCopyWithImpl<MangaData>(this as MangaData, _$identity);

  /// Serializes this MangaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaData&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&const DeepCollectionEquality().equals(other.relationships, relationships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes,const DeepCollectionEquality().hash(relationships));

@override
String toString() {
  return 'MangaData(id: $id, attributes: $attributes, relationships: $relationships)';
}


}

/// @nodoc
abstract mixin class $MangaDataCopyWith<$Res>  {
  factory $MangaDataCopyWith(MangaData value, $Res Function(MangaData) _then) = _$MangaDataCopyWithImpl;
@useResult
$Res call({
 String id, MangaAttributes attributes, List<Relationship> relationships
});


$MangaAttributesCopyWith<$Res> get attributes;

}
/// @nodoc
class _$MangaDataCopyWithImpl<$Res>
    implements $MangaDataCopyWith<$Res> {
  _$MangaDataCopyWithImpl(this._self, this._then);

  final MangaData _self;
  final $Res Function(MangaData) _then;

/// Create a copy of MangaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,Object? relationships = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as MangaAttributes,relationships: null == relationships ? _self.relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,
  ));
}
/// Create a copy of MangaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MangaAttributesCopyWith<$Res> get attributes {
  
  return $MangaAttributesCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _MangaData implements MangaData {
  const _MangaData({required this.id, required this.attributes, final  List<Relationship> relationships = const <Relationship>[]}): _relationships = relationships;
  factory _MangaData.fromJson(Map<String, dynamic> json) => _$MangaDataFromJson(json);

@override final  String id;
@override final  MangaAttributes attributes;
 final  List<Relationship> _relationships;
@override@JsonKey() List<Relationship> get relationships {
  if (_relationships is EqualUnmodifiableListView) return _relationships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationships);
}


/// Create a copy of MangaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaDataCopyWith<_MangaData> get copyWith => __$MangaDataCopyWithImpl<_MangaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MangaData&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&const DeepCollectionEquality().equals(other._relationships, _relationships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes,const DeepCollectionEquality().hash(_relationships));

@override
String toString() {
  return 'MangaData(id: $id, attributes: $attributes, relationships: $relationships)';
}


}

/// @nodoc
abstract mixin class _$MangaDataCopyWith<$Res> implements $MangaDataCopyWith<$Res> {
  factory _$MangaDataCopyWith(_MangaData value, $Res Function(_MangaData) _then) = __$MangaDataCopyWithImpl;
@override @useResult
$Res call({
 String id, MangaAttributes attributes, List<Relationship> relationships
});


@override $MangaAttributesCopyWith<$Res> get attributes;

}
/// @nodoc
class __$MangaDataCopyWithImpl<$Res>
    implements _$MangaDataCopyWith<$Res> {
  __$MangaDataCopyWithImpl(this._self, this._then);

  final _MangaData _self;
  final $Res Function(_MangaData) _then;

/// Create a copy of MangaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,Object? relationships = null,}) {
  return _then(_MangaData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as MangaAttributes,relationships: null == relationships ? _self._relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,
  ));
}

/// Create a copy of MangaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MangaAttributesCopyWith<$Res> get attributes {
  
  return $MangaAttributesCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$MangaAttributes {

 LocalizedString get title; List<LocalizedString> get altTitles; LocalizedString get description; String? get originalLanguage; String? get lastVolume; String? get lastChapter; ContentRating? get contentRating; PublicationDemographic? get publicationDemographic; Status? get status; List<Tag> get tags;
/// Create a copy of MangaAttributes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaAttributesCopyWith<MangaAttributes> get copyWith => _$MangaAttributesCopyWithImpl<MangaAttributes>(this as MangaAttributes, _$identity);

  /// Serializes this MangaAttributes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaAttributes&&const DeepCollectionEquality().equals(other.title, title)&&const DeepCollectionEquality().equals(other.altTitles, altTitles)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.lastVolume, lastVolume) || other.lastVolume == lastVolume)&&(identical(other.lastChapter, lastChapter) || other.lastChapter == lastChapter)&&(identical(other.contentRating, contentRating) || other.contentRating == contentRating)&&(identical(other.publicationDemographic, publicationDemographic) || other.publicationDemographic == publicationDemographic)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(title),const DeepCollectionEquality().hash(altTitles),const DeepCollectionEquality().hash(description),originalLanguage,lastVolume,lastChapter,contentRating,publicationDemographic,status,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'MangaAttributes(title: $title, altTitles: $altTitles, description: $description, originalLanguage: $originalLanguage, lastVolume: $lastVolume, lastChapter: $lastChapter, contentRating: $contentRating, publicationDemographic: $publicationDemographic, status: $status, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $MangaAttributesCopyWith<$Res>  {
  factory $MangaAttributesCopyWith(MangaAttributes value, $Res Function(MangaAttributes) _then) = _$MangaAttributesCopyWithImpl;
@useResult
$Res call({
 LocalizedString title, List<LocalizedString> altTitles, LocalizedString description, String? originalLanguage, String? lastVolume, String? lastChapter, ContentRating? contentRating, PublicationDemographic? publicationDemographic, Status? status, List<Tag> tags
});




}
/// @nodoc
class _$MangaAttributesCopyWithImpl<$Res>
    implements $MangaAttributesCopyWith<$Res> {
  _$MangaAttributesCopyWithImpl(this._self, this._then);

  final MangaAttributes _self;
  final $Res Function(MangaAttributes) _then;

/// Create a copy of MangaAttributes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? altTitles = null,Object? description = null,Object? originalLanguage = freezed,Object? lastVolume = freezed,Object? lastChapter = freezed,Object? contentRating = freezed,Object? publicationDemographic = freezed,Object? status = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,altTitles: null == altTitles ? _self.altTitles : altTitles // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,lastVolume: freezed == lastVolume ? _self.lastVolume : lastVolume // ignore: cast_nullable_to_non_nullable
as String?,lastChapter: freezed == lastChapter ? _self.lastChapter : lastChapter // ignore: cast_nullable_to_non_nullable
as String?,contentRating: freezed == contentRating ? _self.contentRating : contentRating // ignore: cast_nullable_to_non_nullable
as ContentRating?,publicationDemographic: freezed == publicationDemographic ? _self.publicationDemographic : publicationDemographic // ignore: cast_nullable_to_non_nullable
as PublicationDemographic?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MangaAttributes implements MangaAttributes {
  const _MangaAttributes({required final  LocalizedString title, required final  List<LocalizedString> altTitles, required final  LocalizedString description, this.originalLanguage, this.lastVolume, this.lastChapter, this.contentRating, this.publicationDemographic, this.status, required final  List<Tag> tags}): _title = title,_altTitles = altTitles,_description = description,_tags = tags;
  factory _MangaAttributes.fromJson(Map<String, dynamic> json) => _$MangaAttributesFromJson(json);

 final  LocalizedString _title;
@override LocalizedString get title {
  if (_title is EqualUnmodifiableMapView) return _title;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_title);
}

 final  List<LocalizedString> _altTitles;
@override List<LocalizedString> get altTitles {
  if (_altTitles is EqualUnmodifiableListView) return _altTitles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_altTitles);
}

 final  LocalizedString _description;
@override LocalizedString get description {
  if (_description is EqualUnmodifiableMapView) return _description;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_description);
}

@override final  String? originalLanguage;
@override final  String? lastVolume;
@override final  String? lastChapter;
@override final  ContentRating? contentRating;
@override final  PublicationDemographic? publicationDemographic;
@override final  Status? status;
 final  List<Tag> _tags;
@override List<Tag> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of MangaAttributes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaAttributesCopyWith<_MangaAttributes> get copyWith => __$MangaAttributesCopyWithImpl<_MangaAttributes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaAttributesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MangaAttributes&&const DeepCollectionEquality().equals(other._title, _title)&&const DeepCollectionEquality().equals(other._altTitles, _altTitles)&&const DeepCollectionEquality().equals(other._description, _description)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.lastVolume, lastVolume) || other.lastVolume == lastVolume)&&(identical(other.lastChapter, lastChapter) || other.lastChapter == lastChapter)&&(identical(other.contentRating, contentRating) || other.contentRating == contentRating)&&(identical(other.publicationDemographic, publicationDemographic) || other.publicationDemographic == publicationDemographic)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_title),const DeepCollectionEquality().hash(_altTitles),const DeepCollectionEquality().hash(_description),originalLanguage,lastVolume,lastChapter,contentRating,publicationDemographic,status,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'MangaAttributes(title: $title, altTitles: $altTitles, description: $description, originalLanguage: $originalLanguage, lastVolume: $lastVolume, lastChapter: $lastChapter, contentRating: $contentRating, publicationDemographic: $publicationDemographic, status: $status, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$MangaAttributesCopyWith<$Res> implements $MangaAttributesCopyWith<$Res> {
  factory _$MangaAttributesCopyWith(_MangaAttributes value, $Res Function(_MangaAttributes) _then) = __$MangaAttributesCopyWithImpl;
@override @useResult
$Res call({
 LocalizedString title, List<LocalizedString> altTitles, LocalizedString description, String? originalLanguage, String? lastVolume, String? lastChapter, ContentRating? contentRating, PublicationDemographic? publicationDemographic, Status? status, List<Tag> tags
});




}
/// @nodoc
class __$MangaAttributesCopyWithImpl<$Res>
    implements _$MangaAttributesCopyWith<$Res> {
  __$MangaAttributesCopyWithImpl(this._self, this._then);

  final _MangaAttributes _self;
  final $Res Function(_MangaAttributes) _then;

/// Create a copy of MangaAttributes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? altTitles = null,Object? description = null,Object? originalLanguage = freezed,Object? lastVolume = freezed,Object? lastChapter = freezed,Object? contentRating = freezed,Object? publicationDemographic = freezed,Object? status = freezed,Object? tags = null,}) {
  return _then(_MangaAttributes(
title: null == title ? _self._title : title // ignore: cast_nullable_to_non_nullable
as LocalizedString,altTitles: null == altTitles ? _self._altTitles : altTitles // ignore: cast_nullable_to_non_nullable
as List<LocalizedString>,description: null == description ? _self._description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,lastVolume: freezed == lastVolume ? _self.lastVolume : lastVolume // ignore: cast_nullable_to_non_nullable
as String?,lastChapter: freezed == lastChapter ? _self.lastChapter : lastChapter // ignore: cast_nullable_to_non_nullable
as String?,contentRating: freezed == contentRating ? _self.contentRating : contentRating // ignore: cast_nullable_to_non_nullable
as ContentRating?,publicationDemographic: freezed == publicationDemographic ? _self.publicationDemographic : publicationDemographic // ignore: cast_nullable_to_non_nullable
as PublicationDemographic?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,
  ));
}


}


/// @nodoc
mixin _$Tag {

 String get id; TagAttributes get attributes;
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagCopyWith<Tag> get copyWith => _$TagCopyWithImpl<Tag>(this as Tag, _$identity);

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Tag(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $TagCopyWith<$Res>  {
  factory $TagCopyWith(Tag value, $Res Function(Tag) _then) = _$TagCopyWithImpl;
@useResult
$Res call({
 String id, TagAttributes attributes
});


$TagAttributesCopyWith<$Res> get attributes;

}
/// @nodoc
class _$TagCopyWithImpl<$Res>
    implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._self, this._then);

  final Tag _self;
  final $Res Function(Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as TagAttributes,
  ));
}
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagAttributesCopyWith<$Res> get attributes {
  
  return $TagAttributesCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Tag implements Tag {
  const _Tag({this.id = '', required this.attributes});
  factory _Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

@override@JsonKey() final  String id;
@override final  TagAttributes attributes;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Tag(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) _then) = __$TagCopyWithImpl;
@override @useResult
$Res call({
 String id, TagAttributes attributes
});


@override $TagAttributesCopyWith<$Res> get attributes;

}
/// @nodoc
class __$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(this._self, this._then);

  final _Tag _self;
  final $Res Function(_Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_Tag(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as TagAttributes,
  ));
}

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagAttributesCopyWith<$Res> get attributes {
  
  return $TagAttributesCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$TagAttributes {

 LocalizedString get name; String get group;
/// Create a copy of TagAttributes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagAttributesCopyWith<TagAttributes> get copyWith => _$TagAttributesCopyWithImpl<TagAttributes>(this as TagAttributes, _$identity);

  /// Serializes this TagAttributes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagAttributes&&const DeepCollectionEquality().equals(other.name, name)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(name),group);

@override
String toString() {
  return 'TagAttributes(name: $name, group: $group)';
}


}

/// @nodoc
abstract mixin class $TagAttributesCopyWith<$Res>  {
  factory $TagAttributesCopyWith(TagAttributes value, $Res Function(TagAttributes) _then) = _$TagAttributesCopyWithImpl;
@useResult
$Res call({
 LocalizedString name, String group
});




}
/// @nodoc
class _$TagAttributesCopyWithImpl<$Res>
    implements $TagAttributesCopyWith<$Res> {
  _$TagAttributesCopyWithImpl(this._self, this._then);

  final TagAttributes _self;
  final $Res Function(TagAttributes) _then;

/// Create a copy of TagAttributes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? group = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedString,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TagAttributes implements TagAttributes {
  const _TagAttributes({required final  LocalizedString name, required this.group}): _name = name;
  factory _TagAttributes.fromJson(Map<String, dynamic> json) => _$TagAttributesFromJson(json);

 final  LocalizedString _name;
@override LocalizedString get name {
  if (_name is EqualUnmodifiableMapView) return _name;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_name);
}

@override final  String group;

/// Create a copy of TagAttributes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagAttributesCopyWith<_TagAttributes> get copyWith => __$TagAttributesCopyWithImpl<_TagAttributes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagAttributesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagAttributes&&const DeepCollectionEquality().equals(other._name, _name)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_name),group);

@override
String toString() {
  return 'TagAttributes(name: $name, group: $group)';
}


}

/// @nodoc
abstract mixin class _$TagAttributesCopyWith<$Res> implements $TagAttributesCopyWith<$Res> {
  factory _$TagAttributesCopyWith(_TagAttributes value, $Res Function(_TagAttributes) _then) = __$TagAttributesCopyWithImpl;
@override @useResult
$Res call({
 LocalizedString name, String group
});




}
/// @nodoc
class __$TagAttributesCopyWithImpl<$Res>
    implements _$TagAttributesCopyWith<$Res> {
  __$TagAttributesCopyWithImpl(this._self, this._then);

  final _TagAttributes _self;
  final $Res Function(_TagAttributes) _then;

/// Create a copy of TagAttributes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? group = null,}) {
  return _then(_TagAttributes(
name: null == name ? _self._name : name // ignore: cast_nullable_to_non_nullable
as LocalizedString,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
