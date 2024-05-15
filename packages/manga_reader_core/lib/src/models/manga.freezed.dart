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
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get genre => throw _privateConstructorUsedError;
  @MangaStatusConverter()
  MangaStatus get status => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;
  UpdateStrategy get updateStrategy => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;

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
      String url,
      String title,
      String? artist,
      String? author,
      String? description,
      List<String>? genre,
      @MangaStatusConverter() MangaStatus status,
      String? thumbnailUrl,
      bool initialized,
      UpdateStrategy updateStrategy,
      bool favorite,
      String sourceId});
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
    Object? url = null,
    Object? title = null,
    Object? artist = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? genre = freezed,
    Object? status = null,
    Object? thumbnailUrl = freezed,
    Object? initialized = null,
    Object? updateStrategy = null,
    Object? favorite = null,
    Object? sourceId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as UpdateStrategy,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
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
      String url,
      String title,
      String? artist,
      String? author,
      String? description,
      List<String>? genre,
      @MangaStatusConverter() MangaStatus status,
      String? thumbnailUrl,
      bool initialized,
      UpdateStrategy updateStrategy,
      bool favorite,
      String sourceId});
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
    Object? url = null,
    Object? title = null,
    Object? artist = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? genre = freezed,
    Object? status = null,
    Object? thumbnailUrl = freezed,
    Object? initialized = null,
    Object? updateStrategy = null,
    Object? favorite = null,
    Object? sourceId = null,
  }) {
    return _then(_$MangaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      genre: freezed == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as UpdateStrategy,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaImpl extends _Manga {
  const _$MangaImpl(
      {required this.id,
      required this.url,
      required this.title,
      this.artist,
      this.author,
      this.description,
      final List<String>? genre,
      @MangaStatusConverter() this.status = MangaStatus.unknown,
      this.thumbnailUrl,
      this.initialized = false,
      this.updateStrategy = UpdateStrategy.alwaysUpdate,
      this.favorite = false,
      required this.sourceId})
      : _genre = genre,
        super._();

  factory _$MangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String title;
  @override
  final String? artist;
  @override
  final String? author;
  @override
  final String? description;
  final List<String>? _genre;
  @override
  List<String>? get genre {
    final value = _genre;
    if (value == null) return null;
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  @MangaStatusConverter()
  final MangaStatus status;
  @override
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final bool initialized;
  @override
  @JsonKey()
  final UpdateStrategy updateStrategy;
  @override
  @JsonKey()
  final bool favorite;
  @override
  final String sourceId;

  @override
  String toString() {
    return 'Manga(id: $id, url: $url, title: $title, artist: $artist, author: $author, description: $description, genre: $genre, status: $status, thumbnailUrl: $thumbnailUrl, initialized: $initialized, updateStrategy: $updateStrategy, favorite: $favorite, sourceId: $sourceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            (identical(other.updateStrategy, updateStrategy) ||
                other.updateStrategy == updateStrategy) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      title,
      artist,
      author,
      description,
      const DeepCollectionEquality().hash(_genre),
      status,
      thumbnailUrl,
      initialized,
      updateStrategy,
      favorite,
      sourceId);

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
      required final String url,
      required final String title,
      final String? artist,
      final String? author,
      final String? description,
      final List<String>? genre,
      @MangaStatusConverter() final MangaStatus status,
      final String? thumbnailUrl,
      final bool initialized,
      final UpdateStrategy updateStrategy,
      final bool favorite,
      required final String sourceId}) = _$MangaImpl;
  const _Manga._() : super._();

  factory _Manga.fromJson(Map<String, dynamic> json) = _$MangaImpl.fromJson;

  @override
  int get id;
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
  List<String>? get genre;
  @override
  @MangaStatusConverter()
  MangaStatus get status;
  @override
  String? get thumbnailUrl;
  @override
  bool get initialized;
  @override
  UpdateStrategy get updateStrategy;
  @override
  bool get favorite;
  @override
  String get sourceId;
  @override
  @JsonKey(ignore: true)
  _$$MangaImplCopyWith<_$MangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
