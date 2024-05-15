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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Manga _$MangaFromJson(Map<String, dynamic> json) {
  return _Manga.fromJson(json);
}

/// @nodoc
mixin _$Manga {
  int get id => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  DateTime? get lastUpdate => throw _privateConstructorUsedError;
  DateTime? get nextUpdate => throw _privateConstructorUsedError;
  int get fetchInterval => throw _privateConstructorUsedError;
  DateTime? get dateAdded => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  MangaStatus get status => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  UpdateStrategy get updateStrategy => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;
  DateTime? get lastModifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaCopyWith<Manga> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaCopyWith<$Res> {
  factory $MangaCopyWith(Manga value, $Res Function(Manga) then) =
      _$MangaCopyWithImpl<$Res, Manga>;
  @useResult
  $Res call(
      {int id,
      String sourceId,
      bool favorite,
      DateTime? lastUpdate,
      DateTime? nextUpdate,
      int fetchInterval,
      DateTime? dateAdded,
      String url,
      String title,
      String? artist,
      String? author,
      String? description,
      List<String>? genres,
      MangaStatus status,
      String? thumbnailUrl,
      UpdateStrategy updateStrategy,
      bool initialized,
      DateTime? lastModifiedAt});
}

/// @nodoc
class _$MangaCopyWithImpl<$Res, $Val extends Manga>
    implements $MangaCopyWith<$Res> {
  _$MangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceId = null,
    Object? favorite = null,
    Object? lastUpdate = freezed,
    Object? nextUpdate = freezed,
    Object? fetchInterval = null,
    Object? dateAdded = freezed,
    Object? url = null,
    Object? title = null,
    Object? artist = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? genres = freezed,
    Object? status = null,
    Object? thumbnailUrl = freezed,
    Object? updateStrategy = null,
    Object? initialized = null,
    Object? lastModifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextUpdate: freezed == nextUpdate
          ? _value.nextUpdate
          : nextUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fetchInterval: null == fetchInterval
          ? _value.fetchInterval
          : fetchInterval // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as UpdateStrategy,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      lastModifiedAt: freezed == lastModifiedAt
          ? _value.lastModifiedAt
          : lastModifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaImplCopyWith<$Res> implements $MangaCopyWith<$Res> {
  factory _$$MangaImplCopyWith(
          _$MangaImpl value, $Res Function(_$MangaImpl) then) =
      __$$MangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String sourceId,
      bool favorite,
      DateTime? lastUpdate,
      DateTime? nextUpdate,
      int fetchInterval,
      DateTime? dateAdded,
      String url,
      String title,
      String? artist,
      String? author,
      String? description,
      List<String>? genres,
      MangaStatus status,
      String? thumbnailUrl,
      UpdateStrategy updateStrategy,
      bool initialized,
      DateTime? lastModifiedAt});
}

/// @nodoc
class __$$MangaImplCopyWithImpl<$Res>
    extends _$MangaCopyWithImpl<$Res, _$MangaImpl>
    implements _$$MangaImplCopyWith<$Res> {
  __$$MangaImplCopyWithImpl(
      _$MangaImpl _value, $Res Function(_$MangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceId = null,
    Object? favorite = null,
    Object? lastUpdate = freezed,
    Object? nextUpdate = freezed,
    Object? fetchInterval = null,
    Object? dateAdded = freezed,
    Object? url = null,
    Object? title = null,
    Object? artist = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? genres = freezed,
    Object? status = null,
    Object? thumbnailUrl = freezed,
    Object? updateStrategy = null,
    Object? initialized = null,
    Object? lastModifiedAt = freezed,
  }) {
    return _then(_$MangaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextUpdate: freezed == nextUpdate
          ? _value.nextUpdate
          : nextUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fetchInterval: null == fetchInterval
          ? _value.fetchInterval
          : fetchInterval // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as UpdateStrategy,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      lastModifiedAt: freezed == lastModifiedAt
          ? _value.lastModifiedAt
          : lastModifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaImpl extends _Manga {
  const _$MangaImpl(
      {required this.id,
      required this.sourceId,
      this.favorite = false,
      this.lastUpdate,
      this.nextUpdate,
      this.fetchInterval = 0,
      this.dateAdded,
      this.url = '',
      this.title = '',
      this.artist,
      this.author,
      this.description,
      final List<String>? genres,
      this.status = MangaStatus.unknown,
      this.thumbnailUrl,
      this.updateStrategy = UpdateStrategy.alwaysUpdate,
      this.initialized = false,
      this.lastModifiedAt})
      : _genres = genres,
        super._();

  factory _$MangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaImplFromJson(json);

  @override
  final int id;
  @override
  final String sourceId;
  @override
  @JsonKey()
  final bool favorite;
  @override
  final DateTime? lastUpdate;
  @override
  final DateTime? nextUpdate;
  @override
  @JsonKey()
  final int fetchInterval;
  @override
  final DateTime? dateAdded;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String title;
  @override
  final String? artist;
  @override
  final String? author;
  @override
  final String? description;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final MangaStatus status;
  @override
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final UpdateStrategy updateStrategy;
  @override
  @JsonKey()
  final bool initialized;
  @override
  final DateTime? lastModifiedAt;

  @override
  String toString() {
    return 'Manga(id: $id, sourceId: $sourceId, favorite: $favorite, lastUpdate: $lastUpdate, nextUpdate: $nextUpdate, fetchInterval: $fetchInterval, dateAdded: $dateAdded, url: $url, title: $title, artist: $artist, author: $author, description: $description, genres: $genres, status: $status, thumbnailUrl: $thumbnailUrl, updateStrategy: $updateStrategy, initialized: $initialized, lastModifiedAt: $lastModifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.nextUpdate, nextUpdate) ||
                other.nextUpdate == nextUpdate) &&
            (identical(other.fetchInterval, fetchInterval) ||
                other.fetchInterval == fetchInterval) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.updateStrategy, updateStrategy) ||
                other.updateStrategy == updateStrategy) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            (identical(other.lastModifiedAt, lastModifiedAt) ||
                other.lastModifiedAt == lastModifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sourceId,
      favorite,
      lastUpdate,
      nextUpdate,
      fetchInterval,
      dateAdded,
      url,
      title,
      artist,
      author,
      description,
      const DeepCollectionEquality().hash(_genres),
      status,
      thumbnailUrl,
      updateStrategy,
      initialized,
      lastModifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      __$$MangaImplCopyWithImpl<_$MangaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaImplToJson(
      this,
    );
  }
}

abstract class _Manga extends Manga {
  const factory _Manga(
      {required final int id,
      required final String sourceId,
      final bool favorite,
      final DateTime? lastUpdate,
      final DateTime? nextUpdate,
      final int fetchInterval,
      final DateTime? dateAdded,
      final String url,
      final String title,
      final String? artist,
      final String? author,
      final String? description,
      final List<String>? genres,
      final MangaStatus status,
      final String? thumbnailUrl,
      final UpdateStrategy updateStrategy,
      final bool initialized,
      final DateTime? lastModifiedAt}) = _$MangaImpl;
  const _Manga._() : super._();

  factory _Manga.fromJson(Map<String, dynamic> json) = _$MangaImpl.fromJson;

  @override
  int get id;
  @override
  String get sourceId;
  @override
  bool get favorite;
  @override
  DateTime? get lastUpdate;
  @override
  DateTime? get nextUpdate;
  @override
  int get fetchInterval;
  @override
  DateTime? get dateAdded;
  @override
  String get url;
  @override
  String get title;
  @override
  String? get artist;
  @override
  String? get author;
  @override
  String? get description;
  @override
  List<String>? get genres;
  @override
  MangaStatus get status;
  @override
  String? get thumbnailUrl;
  @override
  UpdateStrategy get updateStrategy;
  @override
  bool get initialized;
  @override
  DateTime? get lastModifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
