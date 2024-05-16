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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ChapterResponseImplCopyWith<$Res>
    implements $ChapterResponseCopyWith<$Res> {
  factory _$$ChapterResponseImplCopyWith(_$ChapterResponseImpl value,
          $Res Function(_$ChapterResponseImpl) then) =
      __$$ChapterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChapterData> data, int limit, int offset, int total});
}

/// @nodoc
class __$$ChapterResponseImplCopyWithImpl<$Res>
    extends _$ChapterResponseCopyWithImpl<$Res, _$ChapterResponseImpl>
    implements _$$ChapterResponseImplCopyWith<$Res> {
  __$$ChapterResponseImplCopyWithImpl(
      _$ChapterResponseImpl _value, $Res Function(_$ChapterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
  }) {
    return _then(_$ChapterResponseImpl(
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
class _$ChapterResponseImpl extends _ChapterResponse {
  const _$ChapterResponseImpl(
      {final List<ChapterData> data = const <ChapterData>[],
      this.limit = 0,
      this.offset = 0,
      this.total = 0})
      : _data = data,
        super._();

  factory _$ChapterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterResponseImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterResponseImpl &&
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
  _$$ChapterResponseImplCopyWith<_$ChapterResponseImpl> get copyWith =>
      __$$ChapterResponseImplCopyWithImpl<_$ChapterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterResponseImplToJson(
      this,
    );
  }
}

abstract class _ChapterResponse extends ChapterResponse {
  const factory _ChapterResponse(
      {final List<ChapterData> data,
      final int limit,
      final int offset,
      final int total}) = _$ChapterResponseImpl;
  const _ChapterResponse._() : super._();

  factory _ChapterResponse.fromJson(Map<String, dynamic> json) =
      _$ChapterResponseImpl.fromJson;

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
  _$$ChapterResponseImplCopyWith<_$ChapterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterData _$ChapterDataFromJson(Map<String, dynamic> json) {
  return _ChapterData.fromJson(json);
}

/// @nodoc
mixin _$ChapterData {
  String get id => throw _privateConstructorUsedError;
  ChapterAttributes get attributes => throw _privateConstructorUsedError;
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
      List<Relationship> relationships});

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
abstract class _$$ChapterDataImplCopyWith<$Res>
    implements $ChapterDataCopyWith<$Res> {
  factory _$$ChapterDataImplCopyWith(
          _$ChapterDataImpl value, $Res Function(_$ChapterDataImpl) then) =
      __$$ChapterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ChapterAttributes attributes,
      List<Relationship> relationships});

  @override
  $ChapterAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$ChapterDataImplCopyWithImpl<$Res>
    extends _$ChapterDataCopyWithImpl<$Res, _$ChapterDataImpl>
    implements _$$ChapterDataImplCopyWith<$Res> {
  __$$ChapterDataImplCopyWithImpl(
      _$ChapterDataImpl _value, $Res Function(_$ChapterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
    Object? relationships = null,
  }) {
    return _then(_$ChapterDataImpl(
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
class _$ChapterDataImpl implements _ChapterData {
  const _$ChapterDataImpl(
      {required this.id,
      required this.attributes,
      final List<Relationship> relationships = const <Relationship>[]})
      : _relationships = relationships;

  factory _$ChapterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterDataImplFromJson(json);

  @override
  final String id;
  @override
  final ChapterAttributes attributes;
  final List<Relationship> _relationships;
  @override
  @JsonKey()
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterDataImpl &&
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
  _$$ChapterDataImplCopyWith<_$ChapterDataImpl> get copyWith =>
      __$$ChapterDataImplCopyWithImpl<_$ChapterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterDataImplToJson(
      this,
    );
  }
}

abstract class _ChapterData implements ChapterData {
  const factory _ChapterData(
      {required final String id,
      required final ChapterAttributes attributes,
      final List<Relationship> relationships}) = _$ChapterDataImpl;

  factory _ChapterData.fromJson(Map<String, dynamic> json) =
      _$ChapterDataImpl.fromJson;

  @override
  String get id;
  @override
  ChapterAttributes get attributes;
  @override
  List<Relationship> get relationships;
  @override
  @JsonKey(ignore: true)
  _$$ChapterDataImplCopyWith<_$ChapterDataImpl> get copyWith =>
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
  @DtConverter()
  DateTime? get publishAt => throw _privateConstructorUsedError;
  @DtConverter()
  DateTime? get readableAt => throw _privateConstructorUsedError;
  @DtConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DtConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
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
      @DtConverter() DateTime? publishAt,
      @DtConverter() DateTime? readableAt,
      @DtConverter() DateTime? createdAt,
      @DtConverter() DateTime? updatedAt,
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
    Object? publishAt = freezed,
    Object? readableAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      publishAt: freezed == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readableAt: freezed == readableAt
          ? _value.readableAt
          : readableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterAttributesImplCopyWith<$Res>
    implements $ChapterAttributesCopyWith<$Res> {
  factory _$$ChapterAttributesImplCopyWith(_$ChapterAttributesImpl value,
          $Res Function(_$ChapterAttributesImpl) then) =
      __$$ChapterAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? volume,
      String? chapter,
      int pages,
      @DtConverter() DateTime? publishAt,
      @DtConverter() DateTime? readableAt,
      @DtConverter() DateTime? createdAt,
      @DtConverter() DateTime? updatedAt,
      String? externalUrl});
}

/// @nodoc
class __$$ChapterAttributesImplCopyWithImpl<$Res>
    extends _$ChapterAttributesCopyWithImpl<$Res, _$ChapterAttributesImpl>
    implements _$$ChapterAttributesImplCopyWith<$Res> {
  __$$ChapterAttributesImplCopyWithImpl(_$ChapterAttributesImpl _value,
      $Res Function(_$ChapterAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? volume = freezed,
    Object? chapter = freezed,
    Object? pages = null,
    Object? publishAt = freezed,
    Object? readableAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? externalUrl = freezed,
  }) {
    return _then(_$ChapterAttributesImpl(
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
      publishAt: freezed == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readableAt: freezed == readableAt
          ? _value.readableAt
          : readableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterAttributesImpl extends _ChapterAttributes {
  const _$ChapterAttributesImpl(
      {this.title,
      this.volume,
      this.chapter,
      this.pages = 0,
      @DtConverter() this.publishAt,
      @DtConverter() this.readableAt,
      @DtConverter() this.createdAt,
      @DtConverter() this.updatedAt,
      this.externalUrl})
      : super._();

  factory _$ChapterAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterAttributesImplFromJson(json);

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
  @DtConverter()
  final DateTime? publishAt;
  @override
  @DtConverter()
  final DateTime? readableAt;
  @override
  @DtConverter()
  final DateTime? createdAt;
  @override
  @DtConverter()
  final DateTime? updatedAt;
  @override
  final String? externalUrl;

  @override
  String toString() {
    return 'ChapterAttributes(title: $title, volume: $volume, chapter: $chapter, pages: $pages, publishAt: $publishAt, readableAt: $readableAt, createdAt: $createdAt, updatedAt: $updatedAt, externalUrl: $externalUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterAttributesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.publishAt, publishAt) ||
                other.publishAt == publishAt) &&
            (identical(other.readableAt, readableAt) ||
                other.readableAt == readableAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, volume, chapter, pages,
      publishAt, readableAt, createdAt, updatedAt, externalUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterAttributesImplCopyWith<_$ChapterAttributesImpl> get copyWith =>
      __$$ChapterAttributesImplCopyWithImpl<_$ChapterAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterAttributesImplToJson(
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
      @DtConverter() final DateTime? publishAt,
      @DtConverter() final DateTime? readableAt,
      @DtConverter() final DateTime? createdAt,
      @DtConverter() final DateTime? updatedAt,
      final String? externalUrl}) = _$ChapterAttributesImpl;
  const _ChapterAttributes._() : super._();

  factory _ChapterAttributes.fromJson(Map<String, dynamic> json) =
      _$ChapterAttributesImpl.fromJson;

  @override
  String? get title;
  @override
  String? get volume;
  @override
  String? get chapter;
  @override
  int get pages;
  @override
  @DtConverter()
  DateTime? get publishAt;
  @override
  @DtConverter()
  DateTime? get readableAt;
  @override
  @DtConverter()
  DateTime? get createdAt;
  @override
  @DtConverter()
  DateTime? get updatedAt;
  @override
  String? get externalUrl;
  @override
  @JsonKey(ignore: true)
  _$$ChapterAttributesImplCopyWith<_$ChapterAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
