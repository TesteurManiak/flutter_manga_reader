// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoverListResponse {

 List<CoverArt> get data; int get limit; int get offset; int get total;
/// Create a copy of CoverListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoverListResponseCopyWith<CoverListResponse> get copyWith => _$CoverListResponseCopyWithImpl<CoverListResponse>(this as CoverListResponse, _$identity);

  /// Serializes this CoverListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoverListResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),limit,offset,total);

@override
String toString() {
  return 'CoverListResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class $CoverListResponseCopyWith<$Res>  {
  factory $CoverListResponseCopyWith(CoverListResponse value, $Res Function(CoverListResponse) _then) = _$CoverListResponseCopyWithImpl;
@useResult
$Res call({
 List<CoverArt> data, int limit, int offset, int total
});




}
/// @nodoc
class _$CoverListResponseCopyWithImpl<$Res>
    implements $CoverListResponseCopyWith<$Res> {
  _$CoverListResponseCopyWithImpl(this._self, this._then);

  final CoverListResponse _self;
  final $Res Function(CoverListResponse) _then;

/// Create a copy of CoverListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CoverArt>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CoverListResponse implements CoverListResponse {
  const _CoverListResponse({final  List<CoverArt> data = const <CoverArt>[], this.limit = 0, this.offset = 0, this.total = 0}): _data = data;
  factory _CoverListResponse.fromJson(Map<String, dynamic> json) => _$CoverListResponseFromJson(json);

 final  List<CoverArt> _data;
@override@JsonKey() List<CoverArt> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int limit;
@override@JsonKey() final  int offset;
@override@JsonKey() final  int total;

/// Create a copy of CoverListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoverListResponseCopyWith<_CoverListResponse> get copyWith => __$CoverListResponseCopyWithImpl<_CoverListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoverListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoverListResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),limit,offset,total);

@override
String toString() {
  return 'CoverListResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CoverListResponseCopyWith<$Res> implements $CoverListResponseCopyWith<$Res> {
  factory _$CoverListResponseCopyWith(_CoverListResponse value, $Res Function(_CoverListResponse) _then) = __$CoverListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<CoverArt> data, int limit, int offset, int total
});




}
/// @nodoc
class __$CoverListResponseCopyWithImpl<$Res>
    implements _$CoverListResponseCopyWith<$Res> {
  __$CoverListResponseCopyWithImpl(this._self, this._then);

  final _CoverListResponse _self;
  final $Res Function(_CoverListResponse) _then;

/// Create a copy of CoverListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? limit = null,Object? offset = null,Object? total = null,}) {
  return _then(_CoverListResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CoverArt>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CoverArt {

 CoverArtAttributes? get attributes; List<Relationship> get relationships;
/// Create a copy of CoverArt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoverArtCopyWith<CoverArt> get copyWith => _$CoverArtCopyWithImpl<CoverArt>(this as CoverArt, _$identity);

  /// Serializes this CoverArt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoverArt&&(identical(other.attributes, attributes) || other.attributes == attributes)&&const DeepCollectionEquality().equals(other.relationships, relationships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attributes,const DeepCollectionEquality().hash(relationships));

@override
String toString() {
  return 'CoverArt(attributes: $attributes, relationships: $relationships)';
}


}

/// @nodoc
abstract mixin class $CoverArtCopyWith<$Res>  {
  factory $CoverArtCopyWith(CoverArt value, $Res Function(CoverArt) _then) = _$CoverArtCopyWithImpl;
@useResult
$Res call({
 CoverArtAttributes? attributes, List<Relationship> relationships
});


$CoverArtAttributesCopyWith<$Res>? get attributes;

}
/// @nodoc
class _$CoverArtCopyWithImpl<$Res>
    implements $CoverArtCopyWith<$Res> {
  _$CoverArtCopyWithImpl(this._self, this._then);

  final CoverArt _self;
  final $Res Function(CoverArt) _then;

/// Create a copy of CoverArt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attributes = freezed,Object? relationships = null,}) {
  return _then(_self.copyWith(
attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as CoverArtAttributes?,relationships: null == relationships ? _self.relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,
  ));
}
/// Create a copy of CoverArt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoverArtAttributesCopyWith<$Res>? get attributes {
    if (_self.attributes == null) {
    return null;
  }

  return $CoverArtAttributesCopyWith<$Res>(_self.attributes!, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CoverArt implements CoverArt {
  const _CoverArt({this.attributes, final  List<Relationship> relationships = const <Relationship>[]}): _relationships = relationships;
  factory _CoverArt.fromJson(Map<String, dynamic> json) => _$CoverArtFromJson(json);

@override final  CoverArtAttributes? attributes;
 final  List<Relationship> _relationships;
@override@JsonKey() List<Relationship> get relationships {
  if (_relationships is EqualUnmodifiableListView) return _relationships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationships);
}


/// Create a copy of CoverArt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoverArtCopyWith<_CoverArt> get copyWith => __$CoverArtCopyWithImpl<_CoverArt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoverArtToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoverArt&&(identical(other.attributes, attributes) || other.attributes == attributes)&&const DeepCollectionEquality().equals(other._relationships, _relationships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attributes,const DeepCollectionEquality().hash(_relationships));

@override
String toString() {
  return 'CoverArt(attributes: $attributes, relationships: $relationships)';
}


}

/// @nodoc
abstract mixin class _$CoverArtCopyWith<$Res> implements $CoverArtCopyWith<$Res> {
  factory _$CoverArtCopyWith(_CoverArt value, $Res Function(_CoverArt) _then) = __$CoverArtCopyWithImpl;
@override @useResult
$Res call({
 CoverArtAttributes? attributes, List<Relationship> relationships
});


@override $CoverArtAttributesCopyWith<$Res>? get attributes;

}
/// @nodoc
class __$CoverArtCopyWithImpl<$Res>
    implements _$CoverArtCopyWith<$Res> {
  __$CoverArtCopyWithImpl(this._self, this._then);

  final _CoverArt _self;
  final $Res Function(_CoverArt) _then;

/// Create a copy of CoverArt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attributes = freezed,Object? relationships = null,}) {
  return _then(_CoverArt(
attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as CoverArtAttributes?,relationships: null == relationships ? _self._relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,
  ));
}

/// Create a copy of CoverArt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoverArtAttributesCopyWith<$Res>? get attributes {
    if (_self.attributes == null) {
    return null;
  }

  return $CoverArtAttributesCopyWith<$Res>(_self.attributes!, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$CoverArtAttributes {

 String? get fileName; String? get locale;
/// Create a copy of CoverArtAttributes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoverArtAttributesCopyWith<CoverArtAttributes> get copyWith => _$CoverArtAttributesCopyWithImpl<CoverArtAttributes>(this as CoverArtAttributes, _$identity);

  /// Serializes this CoverArtAttributes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoverArtAttributes&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.locale, locale) || other.locale == locale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileName,locale);

@override
String toString() {
  return 'CoverArtAttributes(fileName: $fileName, locale: $locale)';
}


}

/// @nodoc
abstract mixin class $CoverArtAttributesCopyWith<$Res>  {
  factory $CoverArtAttributesCopyWith(CoverArtAttributes value, $Res Function(CoverArtAttributes) _then) = _$CoverArtAttributesCopyWithImpl;
@useResult
$Res call({
 String? fileName, String? locale
});




}
/// @nodoc
class _$CoverArtAttributesCopyWithImpl<$Res>
    implements $CoverArtAttributesCopyWith<$Res> {
  _$CoverArtAttributesCopyWithImpl(this._self, this._then);

  final CoverArtAttributes _self;
  final $Res Function(CoverArtAttributes) _then;

/// Create a copy of CoverArtAttributes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fileName = freezed,Object? locale = freezed,}) {
  return _then(_self.copyWith(
fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CoverArtAttributes implements CoverArtAttributes {
  const _CoverArtAttributes({this.fileName, this.locale});
  factory _CoverArtAttributes.fromJson(Map<String, dynamic> json) => _$CoverArtAttributesFromJson(json);

@override final  String? fileName;
@override final  String? locale;

/// Create a copy of CoverArtAttributes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoverArtAttributesCopyWith<_CoverArtAttributes> get copyWith => __$CoverArtAttributesCopyWithImpl<_CoverArtAttributes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoverArtAttributesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoverArtAttributes&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.locale, locale) || other.locale == locale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fileName,locale);

@override
String toString() {
  return 'CoverArtAttributes(fileName: $fileName, locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$CoverArtAttributesCopyWith<$Res> implements $CoverArtAttributesCopyWith<$Res> {
  factory _$CoverArtAttributesCopyWith(_CoverArtAttributes value, $Res Function(_CoverArtAttributes) _then) = __$CoverArtAttributesCopyWithImpl;
@override @useResult
$Res call({
 String? fileName, String? locale
});




}
/// @nodoc
class __$CoverArtAttributesCopyWithImpl<$Res>
    implements _$CoverArtAttributesCopyWith<$Res> {
  __$CoverArtAttributesCopyWithImpl(this._self, this._then);

  final _CoverArtAttributes _self;
  final $Res Function(_CoverArtAttributes) _then;

/// Create a copy of CoverArtAttributes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fileName = freezed,Object? locale = freezed,}) {
  return _then(_CoverArtAttributes(
fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
