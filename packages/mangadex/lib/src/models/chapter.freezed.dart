// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChapterResponse {

 List<ChapterData> get data; int get limit; int get offset; int get total;
/// Create a copy of ChapterResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterResponseCopyWith<ChapterResponse> get copyWith => _$ChapterResponseCopyWithImpl<ChapterResponse>(this as ChapterResponse, _$identity);

  /// Serializes this ChapterResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),limit,offset,total);

@override
String toString() {
  return 'ChapterResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class $ChapterResponseCopyWith<$Res>  {
  factory $ChapterResponseCopyWith(ChapterResponse value, $Res Function(ChapterResponse) _then) = _$ChapterResponseCopyWithImpl;
@useResult
$Res call({
 List<ChapterData> data, int limit, int offset, int total
});




}
/// @nodoc
class _$ChapterResponseCopyWithImpl<$Res>
    implements $ChapterResponseCopyWith<$Res> {
  _$ChapterResponseCopyWithImpl(this._self, this._then);

  final ChapterResponse _self;
  final $Res Function(ChapterResponse) _then;

/// Create a copy of ChapterResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChapterData>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChapterResponse extends ChapterResponse {
  const _ChapterResponse({final  List<ChapterData> data = const <ChapterData>[], this.limit = 0, this.offset = 0, this.total = 0}): _data = data,super._();
  factory _ChapterResponse.fromJson(Map<String, dynamic> json) => _$ChapterResponseFromJson(json);

 final  List<ChapterData> _data;
@override@JsonKey() List<ChapterData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int limit;
@override@JsonKey() final  int offset;
@override@JsonKey() final  int total;

/// Create a copy of ChapterResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterResponseCopyWith<_ChapterResponse> get copyWith => __$ChapterResponseCopyWithImpl<_ChapterResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),limit,offset,total);

@override
String toString() {
  return 'ChapterResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ChapterResponseCopyWith<$Res> implements $ChapterResponseCopyWith<$Res> {
  factory _$ChapterResponseCopyWith(_ChapterResponse value, $Res Function(_ChapterResponse) _then) = __$ChapterResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ChapterData> data, int limit, int offset, int total
});




}
/// @nodoc
class __$ChapterResponseCopyWithImpl<$Res>
    implements _$ChapterResponseCopyWith<$Res> {
  __$ChapterResponseCopyWithImpl(this._self, this._then);

  final _ChapterResponse _self;
  final $Res Function(_ChapterResponse) _then;

/// Create a copy of ChapterResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_ChapterResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChapterData>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ChapterData {

 String get id; ChapterAttributes get attributes; List<Relationship> get relationships;
/// Create a copy of ChapterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterDataCopyWith<ChapterData> get copyWith => _$ChapterDataCopyWithImpl<ChapterData>(this as ChapterData, _$identity);

  /// Serializes this ChapterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterData&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&const DeepCollectionEquality().equals(other.relationships, relationships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes,const DeepCollectionEquality().hash(relationships));

@override
String toString() {
  return 'ChapterData(id: $id, attributes: $attributes, relationships: $relationships)';
}


}

/// @nodoc
abstract mixin class $ChapterDataCopyWith<$Res>  {
  factory $ChapterDataCopyWith(ChapterData value, $Res Function(ChapterData) _then) = _$ChapterDataCopyWithImpl;
@useResult
$Res call({
 String id, ChapterAttributes attributes, List<Relationship> relationships
});


$ChapterAttributesCopyWith<$Res> get attributes;

}
/// @nodoc
class _$ChapterDataCopyWithImpl<$Res>
    implements $ChapterDataCopyWith<$Res> {
  _$ChapterDataCopyWithImpl(this._self, this._then);

  final ChapterData _self;
  final $Res Function(ChapterData) _then;

/// Create a copy of ChapterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,Object? relationships = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ChapterAttributes,relationships: null == relationships ? _self.relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,
  ));
}
/// Create a copy of ChapterData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChapterAttributesCopyWith<$Res> get attributes {
  
  return $ChapterAttributesCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ChapterData implements ChapterData {
  const _ChapterData({required this.id, required this.attributes, final  List<Relationship> relationships = const <Relationship>[]}): _relationships = relationships;
  factory _ChapterData.fromJson(Map<String, dynamic> json) => _$ChapterDataFromJson(json);

@override final  String id;
@override final  ChapterAttributes attributes;
 final  List<Relationship> _relationships;
@override@JsonKey() List<Relationship> get relationships {
  if (_relationships is EqualUnmodifiableListView) return _relationships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationships);
}


/// Create a copy of ChapterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterDataCopyWith<_ChapterData> get copyWith => __$ChapterDataCopyWithImpl<_ChapterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterData&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&const DeepCollectionEquality().equals(other._relationships, _relationships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes,const DeepCollectionEquality().hash(_relationships));

@override
String toString() {
  return 'ChapterData(id: $id, attributes: $attributes, relationships: $relationships)';
}


}

/// @nodoc
abstract mixin class _$ChapterDataCopyWith<$Res> implements $ChapterDataCopyWith<$Res> {
  factory _$ChapterDataCopyWith(_ChapterData value, $Res Function(_ChapterData) _then) = __$ChapterDataCopyWithImpl;
@override @useResult
$Res call({
 String id, ChapterAttributes attributes, List<Relationship> relationships
});


@override $ChapterAttributesCopyWith<$Res> get attributes;

}
/// @nodoc
class __$ChapterDataCopyWithImpl<$Res>
    implements _$ChapterDataCopyWith<$Res> {
  __$ChapterDataCopyWithImpl(this._self, this._then);

  final _ChapterData _self;
  final $Res Function(_ChapterData) _then;

/// Create a copy of ChapterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,Object? relationships = null,}) {
  return _then(_ChapterData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ChapterAttributes,relationships: null == relationships ? _self._relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,
  ));
}

/// Create a copy of ChapterData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChapterAttributesCopyWith<$Res> get attributes {
  
  return $ChapterAttributesCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$ChapterAttributes {

 String? get title; String? get volume; String? get chapter; int get pages;@DtConverter() DateTime? get publishAt;@DtConverter() DateTime? get readableAt;@DtConverter() DateTime? get createdAt;@DtConverter() DateTime? get updatedAt; String? get externalUrl;
/// Create a copy of ChapterAttributes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterAttributesCopyWith<ChapterAttributes> get copyWith => _$ChapterAttributesCopyWithImpl<ChapterAttributes>(this as ChapterAttributes, _$identity);

  /// Serializes this ChapterAttributes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterAttributes&&(identical(other.title, title) || other.title == title)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.publishAt, publishAt) || other.publishAt == publishAt)&&(identical(other.readableAt, readableAt) || other.readableAt == readableAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.externalUrl, externalUrl) || other.externalUrl == externalUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,volume,chapter,pages,publishAt,readableAt,createdAt,updatedAt,externalUrl);

@override
String toString() {
  return 'ChapterAttributes(title: $title, volume: $volume, chapter: $chapter, pages: $pages, publishAt: $publishAt, readableAt: $readableAt, createdAt: $createdAt, updatedAt: $updatedAt, externalUrl: $externalUrl)';
}


}

/// @nodoc
abstract mixin class $ChapterAttributesCopyWith<$Res>  {
  factory $ChapterAttributesCopyWith(ChapterAttributes value, $Res Function(ChapterAttributes) _then) = _$ChapterAttributesCopyWithImpl;
@useResult
$Res call({
 String? title, String? volume, String? chapter, int pages,@DtConverter() DateTime? publishAt,@DtConverter() DateTime? readableAt,@DtConverter() DateTime? createdAt,@DtConverter() DateTime? updatedAt, String? externalUrl
});




}
/// @nodoc
class _$ChapterAttributesCopyWithImpl<$Res>
    implements $ChapterAttributesCopyWith<$Res> {
  _$ChapterAttributesCopyWithImpl(this._self, this._then);

  final ChapterAttributes _self;
  final $Res Function(ChapterAttributes) _then;

/// Create a copy of ChapterAttributes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? volume = freezed,Object? chapter = freezed,Object? pages = null,Object? publishAt = freezed,Object? readableAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? externalUrl = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,chapter: freezed == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String?,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as DateTime?,readableAt: freezed == readableAt ? _self.readableAt : readableAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,externalUrl: freezed == externalUrl ? _self.externalUrl : externalUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChapterAttributes extends ChapterAttributes {
  const _ChapterAttributes({this.title, this.volume, this.chapter, this.pages = 0, @DtConverter() this.publishAt, @DtConverter() this.readableAt, @DtConverter() this.createdAt, @DtConverter() this.updatedAt, this.externalUrl}): super._();
  factory _ChapterAttributes.fromJson(Map<String, dynamic> json) => _$ChapterAttributesFromJson(json);

@override final  String? title;
@override final  String? volume;
@override final  String? chapter;
@override@JsonKey() final  int pages;
@override@DtConverter() final  DateTime? publishAt;
@override@DtConverter() final  DateTime? readableAt;
@override@DtConverter() final  DateTime? createdAt;
@override@DtConverter() final  DateTime? updatedAt;
@override final  String? externalUrl;

/// Create a copy of ChapterAttributes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterAttributesCopyWith<_ChapterAttributes> get copyWith => __$ChapterAttributesCopyWithImpl<_ChapterAttributes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterAttributesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterAttributes&&(identical(other.title, title) || other.title == title)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.publishAt, publishAt) || other.publishAt == publishAt)&&(identical(other.readableAt, readableAt) || other.readableAt == readableAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.externalUrl, externalUrl) || other.externalUrl == externalUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,volume,chapter,pages,publishAt,readableAt,createdAt,updatedAt,externalUrl);

@override
String toString() {
  return 'ChapterAttributes(title: $title, volume: $volume, chapter: $chapter, pages: $pages, publishAt: $publishAt, readableAt: $readableAt, createdAt: $createdAt, updatedAt: $updatedAt, externalUrl: $externalUrl)';
}


}

/// @nodoc
abstract mixin class _$ChapterAttributesCopyWith<$Res> implements $ChapterAttributesCopyWith<$Res> {
  factory _$ChapterAttributesCopyWith(_ChapterAttributes value, $Res Function(_ChapterAttributes) _then) = __$ChapterAttributesCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? volume, String? chapter, int pages,@DtConverter() DateTime? publishAt,@DtConverter() DateTime? readableAt,@DtConverter() DateTime? createdAt,@DtConverter() DateTime? updatedAt, String? externalUrl
});




}
/// @nodoc
class __$ChapterAttributesCopyWithImpl<$Res>
    implements _$ChapterAttributesCopyWith<$Res> {
  __$ChapterAttributesCopyWithImpl(this._self, this._then);

  final _ChapterAttributes _self;
  final $Res Function(_ChapterAttributes) _then;

/// Create a copy of ChapterAttributes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? volume = freezed,Object? chapter = freezed,Object? pages = null,Object? publishAt = freezed,Object? readableAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? externalUrl = freezed,}) {
  return _then(_ChapterAttributes(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,chapter: freezed == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String?,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as DateTime?,readableAt: freezed == readableAt ? _self.readableAt : readableAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,externalUrl: freezed == externalUrl ? _self.externalUrl : externalUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
