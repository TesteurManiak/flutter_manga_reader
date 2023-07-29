// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChapterResponse _$ChapterResponseFromJson(Map<String, dynamic> json) {
  return _ChapterResponse.fromJson(json);
}

/// @nodoc
mixin _$ChapterResponse {
  List<ChapterData> get data => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterResponseCopyWith<ChapterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterResponseCopyWith<$Res> {
  factory $ChapterResponseCopyWith(
          ChapterResponse value, $Res Function(ChapterResponse) then) =
      _$ChapterResponseCopyWithImpl<$Res, ChapterResponse>;
  @useResult
  $Res call({List<ChapterData> data, int limit, int offset, int total});
}

/// @nodoc
class _$ChapterResponseCopyWithImpl<$Res, $Val extends ChapterResponse>
    implements $ChapterResponseCopyWith<$Res> {
  _$ChapterResponseCopyWithImpl(this._value, this._then);

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
              as List<ChapterData>,
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
abstract class _$$_ChapterResponseCopyWith<$Res>
    implements $ChapterResponseCopyWith<$Res> {
  factory _$$_ChapterResponseCopyWith(
          _$_ChapterResponse value, $Res Function(_$_ChapterResponse) then) =
      __$$_ChapterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChapterData> data, int limit, int offset, int total});
}

/// @nodoc
class __$$_ChapterResponseCopyWithImpl<$Res>
    extends _$ChapterResponseCopyWithImpl<$Res, _$_ChapterResponse>
    implements _$$_ChapterResponseCopyWith<$Res> {
  __$$_ChapterResponseCopyWithImpl(
      _$_ChapterResponse _value, $Res Function(_$_ChapterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_$_ChapterResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChapterData>,
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
class _$_ChapterResponse implements _ChapterResponse {
  const _$_ChapterResponse(
      {final List<ChapterData> data = const <ChapterData>[],
      this.limit = 0,
      this.offset = 0,
      this.total = 0})
      : _data = data;

  factory _$_ChapterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterResponseFromJson(json);

  final List<ChapterData> _data;
  @override
  @JsonKey()
  List<ChapterData> get data {
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
    return 'ChapterResponse(data: $data, limit: $limit, offset: $offset, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterResponse &&
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
  _$$_ChapterResponseCopyWith<_$_ChapterResponse> get copyWith =>
      __$$_ChapterResponseCopyWithImpl<_$_ChapterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterResponseToJson(
      this,
    );
  }
}

abstract class _ChapterResponse implements ChapterResponse {
  const factory _ChapterResponse(
      {final List<ChapterData> data,
      final int limit,
      final int offset,
      final int total}) = _$_ChapterResponse;

  factory _ChapterResponse.fromJson(Map<String, dynamic> json) =
      _$_ChapterResponse.fromJson;

  @override
  List<ChapterData> get data;
  @override
  int get limit;
  @override
  int get offset;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterResponseCopyWith<_$_ChapterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterData _$ChapterDataFromJson(Map<String, dynamic> json) {
  return _ChapterData.fromJson(json);
}

/// @nodoc
mixin _$ChapterData {
  String get id => throw _privateConstructorUsedError;
  ChapterAttributes get attributes => throw _privateConstructorUsedError;
  @RelationshipConverter()
  List<Relationship> get relationships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterDataCopyWith<ChapterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDataCopyWith<$Res> {
  factory $ChapterDataCopyWith(
          ChapterData value, $Res Function(ChapterData) then) =
      _$ChapterDataCopyWithImpl<$Res, ChapterData>;
  @useResult
  $Res call(
      {String id,
      ChapterAttributes attributes,
      @RelationshipConverter() List<Relationship> relationships});

  $ChapterAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$ChapterDataCopyWithImpl<$Res, $Val extends ChapterData>
    implements $ChapterDataCopyWith<$Res> {
  _$ChapterDataCopyWithImpl(this._value, this._then);

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
              as ChapterAttributes,
      relationships: null == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<Relationship>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterAttributesCopyWith<$Res> get attributes {
    return $ChapterAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChapterDataCopyWith<$Res>
    implements $ChapterDataCopyWith<$Res> {
  factory _$$_ChapterDataCopyWith(
          _$_ChapterData value, $Res Function(_$_ChapterData) then) =
      __$$_ChapterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ChapterAttributes attributes,
      @RelationshipConverter() List<Relationship> relationships});

  @override
  $ChapterAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_ChapterDataCopyWithImpl<$Res>
    extends _$ChapterDataCopyWithImpl<$Res, _$_ChapterData>
    implements _$$_ChapterDataCopyWith<$Res> {
  __$$_ChapterDataCopyWithImpl(
      _$_ChapterData _value, $Res Function(_$_ChapterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
    Object? relationships = null,
  }) {
    return _then(_$_ChapterData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ChapterAttributes,
      relationships: null == relationships
          ? _value._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<Relationship>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChapterData implements _ChapterData {
  const _$_ChapterData(
      {required this.id,
      required this.attributes,
      @RelationshipConverter()
      final List<Relationship> relationships = const <Relationship>[]})
      : _relationships = relationships;

  factory _$_ChapterData.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterDataFromJson(json);

  @override
  final String id;
  @override
  final ChapterAttributes attributes;
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
    return 'ChapterData(id: $id, attributes: $attributes, relationships: $relationships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterData &&
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
  _$$_ChapterDataCopyWith<_$_ChapterData> get copyWith =>
      __$$_ChapterDataCopyWithImpl<_$_ChapterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterDataToJson(
      this,
    );
  }
}

abstract class _ChapterData implements ChapterData {
  const factory _ChapterData(
          {required final String id,
          required final ChapterAttributes attributes,
          @RelationshipConverter() final List<Relationship> relationships}) =
      _$_ChapterData;

  factory _ChapterData.fromJson(Map<String, dynamic> json) =
      _$_ChapterData.fromJson;

  @override
  String get id;
  @override
  ChapterAttributes get attributes;
  @override
  @RelationshipConverter()
  List<Relationship> get relationships;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterDataCopyWith<_$_ChapterData> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterAttributes _$ChapterAttributesFromJson(Map<String, dynamic> json) {
  return _ChapterAttributes.fromJson(json);
}

/// @nodoc
mixin _$ChapterAttributes {
  String? get title => throw _privateConstructorUsedError;
  String? get volume => throw _privateConstructorUsedError;
  String? get chapter => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String get publishAt => throw _privateConstructorUsedError;
  String? get externalUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterAttributesCopyWith<ChapterAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterAttributesCopyWith<$Res> {
  factory $ChapterAttributesCopyWith(
          ChapterAttributes value, $Res Function(ChapterAttributes) then) =
      _$ChapterAttributesCopyWithImpl<$Res, ChapterAttributes>;
  @useResult
  $Res call(
      {String? title,
      String? volume,
      String? chapter,
      int pages,
      String publishAt,
      String? externalUrl});
}

/// @nodoc
class _$ChapterAttributesCopyWithImpl<$Res, $Val extends ChapterAttributes>
    implements $ChapterAttributesCopyWith<$Res> {
  _$ChapterAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? volume = freezed,
    Object? chapter = freezed,
    Object? pages = null,
    Object? publishAt = null,
    Object? externalUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      publishAt: null == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterAttributesCopyWith<$Res>
    implements $ChapterAttributesCopyWith<$Res> {
  factory _$$_ChapterAttributesCopyWith(_$_ChapterAttributes value,
          $Res Function(_$_ChapterAttributes) then) =
      __$$_ChapterAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? volume,
      String? chapter,
      int pages,
      String publishAt,
      String? externalUrl});
}

/// @nodoc
class __$$_ChapterAttributesCopyWithImpl<$Res>
    extends _$ChapterAttributesCopyWithImpl<$Res, _$_ChapterAttributes>
    implements _$$_ChapterAttributesCopyWith<$Res> {
  __$$_ChapterAttributesCopyWithImpl(
      _$_ChapterAttributes _value, $Res Function(_$_ChapterAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? volume = freezed,
    Object? chapter = freezed,
    Object? pages = null,
    Object? publishAt = null,
    Object? externalUrl = freezed,
  }) {
    return _then(_$_ChapterAttributes(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      publishAt: null == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChapterAttributes extends _ChapterAttributes {
  const _$_ChapterAttributes(
      {this.title,
      this.volume,
      this.chapter,
      this.pages = 0,
      required this.publishAt,
      this.externalUrl})
      : super._();

  factory _$_ChapterAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterAttributesFromJson(json);

  @override
  final String? title;
  @override
  final String? volume;
  @override
  final String? chapter;
  @override
  @JsonKey()
  final int pages;
  @override
  final String publishAt;
  @override
  final String? externalUrl;

  @override
  String toString() {
    return 'ChapterAttributes(title: $title, volume: $volume, chapter: $chapter, pages: $pages, publishAt: $publishAt, externalUrl: $externalUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterAttributes &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.publishAt, publishAt) ||
                other.publishAt == publishAt) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, volume, chapter, pages, publishAt, externalUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterAttributesCopyWith<_$_ChapterAttributes> get copyWith =>
      __$$_ChapterAttributesCopyWithImpl<_$_ChapterAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterAttributesToJson(
      this,
    );
  }
}

abstract class _ChapterAttributes extends ChapterAttributes {
  const factory _ChapterAttributes(
      {final String? title,
      final String? volume,
      final String? chapter,
      final int pages,
      required final String publishAt,
      final String? externalUrl}) = _$_ChapterAttributes;
  const _ChapterAttributes._() : super._();

  factory _ChapterAttributes.fromJson(Map<String, dynamic> json) =
      _$_ChapterAttributes.fromJson;

  @override
  String? get title;
  @override
  String? get volume;
  @override
  String? get chapter;
  @override
  int get pages;
  @override
  String get publishAt;
  @override
  String? get externalUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterAttributesCopyWith<_$_ChapterAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
