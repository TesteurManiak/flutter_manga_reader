// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MangaListResponse _$MangaListResponseFromJson(Map<String, dynamic> json) {
  return _MangaListResponse.fromJson(json);
}

/// @nodoc
mixin _$MangaListResponse {
  List<MangaData> get data => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaListResponseCopyWith<MangaListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaListResponseCopyWith<$Res> {
  factory $MangaListResponseCopyWith(
          MangaListResponse value, $Res Function(MangaListResponse) then) =
      _$MangaListResponseCopyWithImpl<$Res, MangaListResponse>;
  @useResult
  $Res call({List<MangaData> data, int limit, int offset, int total});
}

/// @nodoc
class _$MangaListResponseCopyWithImpl<$Res, $Val extends MangaListResponse>
    implements $MangaListResponseCopyWith<$Res> {
  _$MangaListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MangaData>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MangaListResponseCopyWith<$Res>
    implements $MangaListResponseCopyWith<$Res> {
  factory _$$_MangaListResponseCopyWith(_$_MangaListResponse value,
          $Res Function(_$_MangaListResponse) then) =
      __$$_MangaListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MangaData> data, int limit, int offset, int total});
}

/// @nodoc
class __$$_MangaListResponseCopyWithImpl<$Res>
    extends _$MangaListResponseCopyWithImpl<$Res, _$_MangaListResponse>
    implements _$$_MangaListResponseCopyWith<$Res> {
  __$$_MangaListResponseCopyWithImpl(
      _$_MangaListResponse _value, $Res Function(_$_MangaListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_$_MangaListResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MangaData>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaListResponse implements _MangaListResponse {
  const _$_MangaListResponse(
      {final List<MangaData> data = const <MangaData>[],
      this.limit = 0,
      this.offset = 0,
      this.total = 0})
      : _data = data;

  factory _$_MangaListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MangaListResponseFromJson(json);

  final List<MangaData> _data;
  @override
  @JsonKey()
  List<MangaData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'MangaListResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaListResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), limit, offset, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MangaListResponseCopyWith<_$_MangaListResponse> get copyWith =>
      __$$_MangaListResponseCopyWithImpl<_$_MangaListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaListResponseToJson(
      this,
    );
  }
}

abstract class _MangaListResponse implements MangaListResponse {
  const factory _MangaListResponse(
      {final List<MangaData> data,
      final int limit,
      final int offset,
      final int total}) = _$_MangaListResponse;

  factory _MangaListResponse.fromJson(Map<String, dynamic> json) =
      _$_MangaListResponse.fromJson;

  @override
  List<MangaData> get data;
  @override
  int get limit;
  @override
  int get offset;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MangaListResponseCopyWith<_$_MangaListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaResponse _$MangaResponseFromJson(Map<String, dynamic> json) {
  return _MangaResponse.fromJson(json);
}

/// @nodoc
mixin _$MangaResponse {
  MangaData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaResponseCopyWith<MangaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaResponseCopyWith<$Res> {
  factory $MangaResponseCopyWith(
          MangaResponse value, $Res Function(MangaResponse) then) =
      _$MangaResponseCopyWithImpl<$Res, MangaResponse>;
  @useResult
  $Res call({MangaData data});

  $MangaDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MangaResponseCopyWithImpl<$Res, $Val extends MangaResponse>
    implements $MangaResponseCopyWith<$Res> {
  _$MangaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MangaData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaDataCopyWith<$Res> get data {
    return $MangaDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MangaResponseCopyWith<$Res>
    implements $MangaResponseCopyWith<$Res> {
  factory _$$_MangaResponseCopyWith(
          _$_MangaResponse value, $Res Function(_$_MangaResponse) then) =
      __$$_MangaResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MangaData data});

  @override
  $MangaDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MangaResponseCopyWithImpl<$Res>
    extends _$MangaResponseCopyWithImpl<$Res, _$_MangaResponse>
    implements _$$_MangaResponseCopyWith<$Res> {
  __$$_MangaResponseCopyWithImpl(
      _$_MangaResponse _value, $Res Function(_$_MangaResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_MangaResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MangaData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaResponse implements _MangaResponse {
  const _$_MangaResponse({required this.data});

  factory _$_MangaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MangaResponseFromJson(json);

  @override
  final MangaData data;

  @override
  String toString() {
    return 'MangaResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MangaResponseCopyWith<_$_MangaResponse> get copyWith =>
      __$$_MangaResponseCopyWithImpl<_$_MangaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaResponseToJson(
      this,
    );
  }
}

abstract class _MangaResponse implements MangaResponse {
  const factory _MangaResponse({required final MangaData data}) =
      _$_MangaResponse;

  factory _MangaResponse.fromJson(Map<String, dynamic> json) =
      _$_MangaResponse.fromJson;

  @override
  MangaData get data;
  @override
  @JsonKey(ignore: true)
  _$$_MangaResponseCopyWith<_$_MangaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaData _$MangaDataFromJson(Map<String, dynamic> json) {
  return _MangaData.fromJson(json);
}

/// @nodoc
mixin _$MangaData {
  String get id => throw _privateConstructorUsedError;
  MangaAttributes get attributes => throw _privateConstructorUsedError;
  @RelationshipConverter()
  List<Relationship> get relationships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDataCopyWith<MangaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDataCopyWith<$Res> {
  factory $MangaDataCopyWith(MangaData value, $Res Function(MangaData) then) =
      _$MangaDataCopyWithImpl<$Res, MangaData>;
  @useResult
  $Res call(
      {String id,
      MangaAttributes attributes,
      @RelationshipConverter() List<Relationship> relationships});

  $MangaAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$MangaDataCopyWithImpl<$Res, $Val extends MangaData>
    implements $MangaDataCopyWith<$Res> {
  _$MangaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
    Object? relationships = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as MangaAttributes,
      relationships: null == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<Relationship>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaAttributesCopyWith<$Res> get attributes {
    return $MangaAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MangaDataCopyWith<$Res> implements $MangaDataCopyWith<$Res> {
  factory _$$_MangaDataCopyWith(
          _$_MangaData value, $Res Function(_$_MangaData) then) =
      __$$_MangaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MangaAttributes attributes,
      @RelationshipConverter() List<Relationship> relationships});

  @override
  $MangaAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_MangaDataCopyWithImpl<$Res>
    extends _$MangaDataCopyWithImpl<$Res, _$_MangaData>
    implements _$$_MangaDataCopyWith<$Res> {
  __$$_MangaDataCopyWithImpl(
      _$_MangaData _value, $Res Function(_$_MangaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
    Object? relationships = null,
  }) {
    return _then(_$_MangaData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as MangaAttributes,
      relationships: null == relationships
          ? _value._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<Relationship>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaData implements _MangaData {
  const _$_MangaData(
      {required this.id,
      required this.attributes,
      @RelationshipConverter()
      final List<Relationship> relationships = const <Relationship>[]})
      : _relationships = relationships;

  factory _$_MangaData.fromJson(Map<String, dynamic> json) =>
      _$$_MangaDataFromJson(json);

  @override
  final String id;
  @override
  final MangaAttributes attributes;
  final List<Relationship> _relationships;
  @override
  @JsonKey()
  @RelationshipConverter()
  List<Relationship> get relationships {
    if (_relationships is EqualUnmodifiableListView) return _relationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationships);
  }

  @override
  String toString() {
    return 'MangaData(id: $id, attributes: $attributes, relationships: $relationships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            const DeepCollectionEquality()
                .equals(other._relationships, _relationships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes,
      const DeepCollectionEquality().hash(_relationships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MangaDataCopyWith<_$_MangaData> get copyWith =>
      __$$_MangaDataCopyWithImpl<_$_MangaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaDataToJson(
      this,
    );
  }
}

abstract class _MangaData implements MangaData {
  const factory _MangaData(
          {required final String id,
          required final MangaAttributes attributes,
          @RelationshipConverter() final List<Relationship> relationships}) =
      _$_MangaData;

  factory _MangaData.fromJson(Map<String, dynamic> json) =
      _$_MangaData.fromJson;

  @override
  String get id;
  @override
  MangaAttributes get attributes;
  @override
  @RelationshipConverter()
  List<Relationship> get relationships;
  @override
  @JsonKey(ignore: true)
  _$$_MangaDataCopyWith<_$_MangaData> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaAttributes _$MangaAttributesFromJson(Map<String, dynamic> json) {
  return _MangaAttributes.fromJson(json);
}

/// @nodoc
mixin _$MangaAttributes {
  Map<String, String> get title => throw _privateConstructorUsedError;
  List<Map<String, String>> get altTitles => throw _privateConstructorUsedError;
  Map<String, String> get description => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  String? get lastVolume => throw _privateConstructorUsedError;
  String? get lastChapter => throw _privateConstructorUsedError;
  ContentRating? get contentRating => throw _privateConstructorUsedError;
  PublicationDemographic? get publicationDemographic =>
      throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaAttributesCopyWith<MangaAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaAttributesCopyWith<$Res> {
  factory $MangaAttributesCopyWith(
          MangaAttributes value, $Res Function(MangaAttributes) then) =
      _$MangaAttributesCopyWithImpl<$Res, MangaAttributes>;
  @useResult
  $Res call(
      {Map<String, String> title,
      List<Map<String, String>> altTitles,
      Map<String, String> description,
      String? originalLanguage,
      String? lastVolume,
      String? lastChapter,
      ContentRating? contentRating,
      PublicationDemographic? publicationDemographic,
      Status? status,
      List<Tag> tags});
}

/// @nodoc
class _$MangaAttributesCopyWithImpl<$Res, $Val extends MangaAttributes>
    implements $MangaAttributesCopyWith<$Res> {
  _$MangaAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? altTitles = null,
    Object? description = null,
    Object? originalLanguage = freezed,
    Object? lastVolume = freezed,
    Object? lastChapter = freezed,
    Object? contentRating = freezed,
    Object? publicationDemographic = freezed,
    Object? status = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      altTitles: null == altTitles
          ? _value.altTitles
          : altTitles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastVolume: freezed == lastVolume
          ? _value.lastVolume
          : lastVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as ContentRating?,
      publicationDemographic: freezed == publicationDemographic
          ? _value.publicationDemographic
          : publicationDemographic // ignore: cast_nullable_to_non_nullable
              as PublicationDemographic?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MangaAttributesCopyWith<$Res>
    implements $MangaAttributesCopyWith<$Res> {
  factory _$$_MangaAttributesCopyWith(
          _$_MangaAttributes value, $Res Function(_$_MangaAttributes) then) =
      __$$_MangaAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> title,
      List<Map<String, String>> altTitles,
      Map<String, String> description,
      String? originalLanguage,
      String? lastVolume,
      String? lastChapter,
      ContentRating? contentRating,
      PublicationDemographic? publicationDemographic,
      Status? status,
      List<Tag> tags});
}

/// @nodoc
class __$$_MangaAttributesCopyWithImpl<$Res>
    extends _$MangaAttributesCopyWithImpl<$Res, _$_MangaAttributes>
    implements _$$_MangaAttributesCopyWith<$Res> {
  __$$_MangaAttributesCopyWithImpl(
      _$_MangaAttributes _value, $Res Function(_$_MangaAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? altTitles = null,
    Object? description = null,
    Object? originalLanguage = freezed,
    Object? lastVolume = freezed,
    Object? lastChapter = freezed,
    Object? contentRating = freezed,
    Object? publicationDemographic = freezed,
    Object? status = freezed,
    Object? tags = null,
  }) {
    return _then(_$_MangaAttributes(
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      altTitles: null == altTitles
          ? _value._altTitles
          : altTitles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastVolume: freezed == lastVolume
          ? _value.lastVolume
          : lastVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as ContentRating?,
      publicationDemographic: freezed == publicationDemographic
          ? _value.publicationDemographic
          : publicationDemographic // ignore: cast_nullable_to_non_nullable
              as PublicationDemographic?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaAttributes implements _MangaAttributes {
  const _$_MangaAttributes(
      {required final Map<String, String> title,
      required final List<Map<String, String>> altTitles,
      required final Map<String, String> description,
      this.originalLanguage,
      this.lastVolume,
      this.lastChapter,
      this.contentRating,
      this.publicationDemographic,
      this.status,
      required final List<Tag> tags})
      : _title = title,
        _altTitles = altTitles,
        _description = description,
        _tags = tags;

  factory _$_MangaAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_MangaAttributesFromJson(json);

  final Map<String, String> _title;
  @override
  Map<String, String> get title {
    if (_title is EqualUnmodifiableMapView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_title);
  }

  final List<Map<String, String>> _altTitles;
  @override
  List<Map<String, String>> get altTitles {
    if (_altTitles is EqualUnmodifiableListView) return _altTitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_altTitles);
  }

  final Map<String, String> _description;
  @override
  Map<String, String> get description {
    if (_description is EqualUnmodifiableMapView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_description);
  }

  @override
  final String? originalLanguage;
  @override
  final String? lastVolume;
  @override
  final String? lastChapter;
  @override
  final ContentRating? contentRating;
  @override
  final PublicationDemographic? publicationDemographic;
  @override
  final Status? status;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'MangaAttributes(title: $title, altTitles: $altTitles, description: $description, originalLanguage: $originalLanguage, lastVolume: $lastVolume, lastChapter: $lastChapter, contentRating: $contentRating, publicationDemographic: $publicationDemographic, status: $status, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaAttributes &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality()
                .equals(other._altTitles, _altTitles) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.lastVolume, lastVolume) ||
                other.lastVolume == lastVolume) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter) &&
            (identical(other.contentRating, contentRating) ||
                other.contentRating == contentRating) &&
            (identical(other.publicationDemographic, publicationDemographic) ||
                other.publicationDemographic == publicationDemographic) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_altTitles),
      const DeepCollectionEquality().hash(_description),
      originalLanguage,
      lastVolume,
      lastChapter,
      contentRating,
      publicationDemographic,
      status,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MangaAttributesCopyWith<_$_MangaAttributes> get copyWith =>
      __$$_MangaAttributesCopyWithImpl<_$_MangaAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaAttributesToJson(
      this,
    );
  }
}

abstract class _MangaAttributes implements MangaAttributes {
  const factory _MangaAttributes(
      {required final Map<String, String> title,
      required final List<Map<String, String>> altTitles,
      required final Map<String, String> description,
      final String? originalLanguage,
      final String? lastVolume,
      final String? lastChapter,
      final ContentRating? contentRating,
      final PublicationDemographic? publicationDemographic,
      final Status? status,
      required final List<Tag> tags}) = _$_MangaAttributes;

  factory _MangaAttributes.fromJson(Map<String, dynamic> json) =
      _$_MangaAttributes.fromJson;

  @override
  Map<String, String> get title;
  @override
  List<Map<String, String>> get altTitles;
  @override
  Map<String, String> get description;
  @override
  String? get originalLanguage;
  @override
  String? get lastVolume;
  @override
  String? get lastChapter;
  @override
  ContentRating? get contentRating;
  @override
  PublicationDemographic? get publicationDemographic;
  @override
  Status? get status;
  @override
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_MangaAttributesCopyWith<_$_MangaAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  String get id => throw _privateConstructorUsedError;
  TagAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call({String id, TagAttributes attributes});

  $TagAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as TagAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TagAttributesCopyWith<$Res> get attributes {
    return $TagAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$_TagCopyWith(_$_Tag value, $Res Function(_$_Tag) then) =
      __$$_TagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, TagAttributes attributes});

  @override
  $TagAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$_Tag>
    implements _$$_TagCopyWith<$Res> {
  __$$_TagCopyWithImpl(_$_Tag _value, $Res Function(_$_Tag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_Tag(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as TagAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tag implements _Tag {
  const _$_Tag({this.id = '', required this.attributes});

  factory _$_Tag.fromJson(Map<String, dynamic> json) => _$$_TagFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final TagAttributes attributes;

  @override
  String toString() {
    return 'Tag(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagCopyWith<_$_Tag> get copyWith =>
      __$$_TagCopyWithImpl<_$_Tag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag(
      {final String id, required final TagAttributes attributes}) = _$_Tag;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$_Tag.fromJson;

  @override
  String get id;
  @override
  TagAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_TagCopyWith<_$_Tag> get copyWith => throw _privateConstructorUsedError;
}

TagAttributes _$TagAttributesFromJson(Map<String, dynamic> json) {
  return _TagAttributes.fromJson(json);
}

/// @nodoc
mixin _$TagAttributes {
  String get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagAttributesCopyWith<TagAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagAttributesCopyWith<$Res> {
  factory $TagAttributesCopyWith(
          TagAttributes value, $Res Function(TagAttributes) then) =
      _$TagAttributesCopyWithImpl<$Res, TagAttributes>;
  @useResult
  $Res call({String group});
}

/// @nodoc
class _$TagAttributesCopyWithImpl<$Res, $Val extends TagAttributes>
    implements $TagAttributesCopyWith<$Res> {
  _$TagAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagAttributesCopyWith<$Res>
    implements $TagAttributesCopyWith<$Res> {
  factory _$$_TagAttributesCopyWith(
          _$_TagAttributes value, $Res Function(_$_TagAttributes) then) =
      __$$_TagAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String group});
}

/// @nodoc
class __$$_TagAttributesCopyWithImpl<$Res>
    extends _$TagAttributesCopyWithImpl<$Res, _$_TagAttributes>
    implements _$$_TagAttributesCopyWith<$Res> {
  __$$_TagAttributesCopyWithImpl(
      _$_TagAttributes _value, $Res Function(_$_TagAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$_TagAttributes(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagAttributes implements _TagAttributes {
  const _$_TagAttributes({required this.group});

  factory _$_TagAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_TagAttributesFromJson(json);

  @override
  final String group;

  @override
  String toString() {
    return 'TagAttributes(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagAttributes &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagAttributesCopyWith<_$_TagAttributes> get copyWith =>
      __$$_TagAttributesCopyWithImpl<_$_TagAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagAttributesToJson(
      this,
    );
  }
}

abstract class _TagAttributes implements TagAttributes {
  const factory _TagAttributes({required final String group}) =
      _$_TagAttributes;

  factory _TagAttributes.fromJson(Map<String, dynamic> json) =
      _$_TagAttributes.fromJson;

  @override
  String get group;
  @override
  @JsonKey(ignore: true)
  _$$_TagAttributesCopyWith<_$_TagAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
