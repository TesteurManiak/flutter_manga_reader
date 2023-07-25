// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_dex_manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MangaDexManga _$MangaDexMangaFromJson(Map<String, dynamic> json) {
  return _MangaDexManga.fromJson(json);
}

/// @nodoc
mixin _$MangaDexManga {
  String get id => throw _privateConstructorUsedError;
  MangaType get type => throw _privateConstructorUsedError;
  MangaAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDexMangaCopyWith<MangaDexManga> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDexMangaCopyWith<$Res> {
  factory $MangaDexMangaCopyWith(
          MangaDexManga value, $Res Function(MangaDexManga) then) =
      _$MangaDexMangaCopyWithImpl<$Res, MangaDexManga>;
  @useResult
  $Res call({String id, MangaType type, MangaAttributes attributes});

  $MangaAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$MangaDexMangaCopyWithImpl<$Res, $Val extends MangaDexManga>
    implements $MangaDexMangaCopyWith<$Res> {
  _$MangaDexMangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MangaType,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as MangaAttributes,
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
abstract class _$$_MangaDexMangaCopyWith<$Res>
    implements $MangaDexMangaCopyWith<$Res> {
  factory _$$_MangaDexMangaCopyWith(
          _$_MangaDexManga value, $Res Function(_$_MangaDexManga) then) =
      __$$_MangaDexMangaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, MangaType type, MangaAttributes attributes});

  @override
  $MangaAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_MangaDexMangaCopyWithImpl<$Res>
    extends _$MangaDexMangaCopyWithImpl<$Res, _$_MangaDexManga>
    implements _$$_MangaDexMangaCopyWith<$Res> {
  __$$_MangaDexMangaCopyWithImpl(
      _$_MangaDexManga _value, $Res Function(_$_MangaDexManga) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = null,
  }) {
    return _then(_$_MangaDexManga(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MangaType,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as MangaAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaDexManga extends _MangaDexManga {
  const _$_MangaDexManga(
      {required this.id, this.type = MangaType.manga, required this.attributes})
      : super._();

  factory _$_MangaDexManga.fromJson(Map<String, dynamic> json) =>
      _$$_MangaDexMangaFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final MangaType type;
  @override
  final MangaAttributes attributes;

  @override
  String toString() {
    return 'MangaDexManga(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaDexManga &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MangaDexMangaCopyWith<_$_MangaDexManga> get copyWith =>
      __$$_MangaDexMangaCopyWithImpl<_$_MangaDexManga>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaDexMangaToJson(
      this,
    );
  }
}

abstract class _MangaDexManga extends MangaDexManga {
  const factory _MangaDexManga(
      {required final String id,
      final MangaType type,
      required final MangaAttributes attributes}) = _$_MangaDexManga;
  const _MangaDexManga._() : super._();

  factory _MangaDexManga.fromJson(Map<String, dynamic> json) =
      _$_MangaDexManga.fromJson;

  @override
  String get id;
  @override
  MangaType get type;
  @override
  MangaAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_MangaDexMangaCopyWith<_$_MangaDexManga> get copyWith =>
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
  bool get isLocked => throw _privateConstructorUsedError;
  Map<String, String> get links => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;
  String? get lastVolume => throw _privateConstructorUsedError;
  String? get lastChapter => throw _privateConstructorUsedError;
  MangaDexPublicationDemographic? get publicationDemographic =>
      throw _privateConstructorUsedError;
  MangaDexStatus get status => throw _privateConstructorUsedError;

  /// Year of release
  int? get year => throw _privateConstructorUsedError;

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
      bool isLocked,
      Map<String, String> links,
      String originalLanguage,
      String? lastVolume,
      String? lastChapter,
      MangaDexPublicationDemographic? publicationDemographic,
      MangaDexStatus status,
      int? year});
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
    Object? isLocked = null,
    Object? links = null,
    Object? originalLanguage = null,
    Object? lastVolume = freezed,
    Object? lastChapter = freezed,
    Object? publicationDemographic = freezed,
    Object? status = null,
    Object? year = freezed,
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
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      lastVolume: freezed == lastVolume
          ? _value.lastVolume
          : lastVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      publicationDemographic: freezed == publicationDemographic
          ? _value.publicationDemographic
          : publicationDemographic // ignore: cast_nullable_to_non_nullable
              as MangaDexPublicationDemographic?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaDexStatus,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
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
      bool isLocked,
      Map<String, String> links,
      String originalLanguage,
      String? lastVolume,
      String? lastChapter,
      MangaDexPublicationDemographic? publicationDemographic,
      MangaDexStatus status,
      int? year});
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
    Object? isLocked = null,
    Object? links = null,
    Object? originalLanguage = null,
    Object? lastVolume = freezed,
    Object? lastChapter = freezed,
    Object? publicationDemographic = freezed,
    Object? status = null,
    Object? year = freezed,
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
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      lastVolume: freezed == lastVolume
          ? _value.lastVolume
          : lastVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      publicationDemographic: freezed == publicationDemographic
          ? _value.publicationDemographic
          : publicationDemographic // ignore: cast_nullable_to_non_nullable
              as MangaDexPublicationDemographic?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaDexStatus,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaAttributes implements _MangaAttributes {
  const _$_MangaAttributes(
      {required final Map<String, String> title,
      final List<Map<String, String>> altTitles = const <LocalizedString>[],
      required final Map<String, String> description,
      required this.isLocked,
      required final Map<String, String> links,
      required this.originalLanguage,
      this.lastVolume,
      this.lastChapter,
      this.publicationDemographic,
      required this.status,
      this.year})
      : _title = title,
        _altTitles = altTitles,
        _description = description,
        _links = links;

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
  @JsonKey()
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
  final bool isLocked;
  final Map<String, String> _links;
  @override
  Map<String, String> get links {
    if (_links is EqualUnmodifiableMapView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_links);
  }

  @override
  final String originalLanguage;
  @override
  final String? lastVolume;
  @override
  final String? lastChapter;
  @override
  final MangaDexPublicationDemographic? publicationDemographic;
  @override
  final MangaDexStatus status;

  /// Year of release
  @override
  final int? year;

  @override
  String toString() {
    return 'MangaAttributes(title: $title, altTitles: $altTitles, description: $description, isLocked: $isLocked, links: $links, originalLanguage: $originalLanguage, lastVolume: $lastVolume, lastChapter: $lastChapter, publicationDemographic: $publicationDemographic, status: $status, year: $year)';
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
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.lastVolume, lastVolume) ||
                other.lastVolume == lastVolume) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter) &&
            (identical(other.publicationDemographic, publicationDemographic) ||
                other.publicationDemographic == publicationDemographic) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_title),
      const DeepCollectionEquality().hash(_altTitles),
      const DeepCollectionEquality().hash(_description),
      isLocked,
      const DeepCollectionEquality().hash(_links),
      originalLanguage,
      lastVolume,
      lastChapter,
      publicationDemographic,
      status,
      year);

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
      final List<Map<String, String>> altTitles,
      required final Map<String, String> description,
      required final bool isLocked,
      required final Map<String, String> links,
      required final String originalLanguage,
      final String? lastVolume,
      final String? lastChapter,
      final MangaDexPublicationDemographic? publicationDemographic,
      required final MangaDexStatus status,
      final int? year}) = _$_MangaAttributes;

  factory _MangaAttributes.fromJson(Map<String, dynamic> json) =
      _$_MangaAttributes.fromJson;

  @override
  Map<String, String> get title;
  @override
  List<Map<String, String>> get altTitles;
  @override
  Map<String, String> get description;
  @override
  bool get isLocked;
  @override
  Map<String, String> get links;
  @override
  String get originalLanguage;
  @override
  String? get lastVolume;
  @override
  String? get lastChapter;
  @override
  MangaDexPublicationDemographic? get publicationDemographic;
  @override
  MangaDexStatus get status;
  @override

  /// Year of release
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_MangaAttributesCopyWith<_$_MangaAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
