// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceManga _$SourceMangaFromJson(Map<String, dynamic> json) {
  return _SourceManga.fromJson(json);
}

/// @nodoc
mixin _$SourceManga {
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  @MangaStatusConverter()
  MangaStatus get status => throw _privateConstructorUsedError;
  String? get genre => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SourceMangaCopyWith<SourceManga> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceMangaCopyWith<$Res> {
  factory $SourceMangaCopyWith(
          SourceManga value, $Res Function(SourceManga) then) =
      _$SourceMangaCopyWithImpl<$Res, SourceManga>;
  @useResult
  $Res call(
      {String title,
      String url,
      String? description,
      String? author,
      @MangaStatusConverter() MangaStatus status,
      String? genre,
      String source,
      String lang,
      String? artist,
      String? thumbnailUrl});
}

/// @nodoc
class _$SourceMangaCopyWithImpl<$Res, $Val extends SourceManga>
    implements $SourceMangaCopyWith<$Res> {
  _$SourceMangaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? description = freezed,
    Object? author = freezed,
    Object? status = null,
    Object? genre = freezed,
    Object? source = null,
    Object? lang = null,
    Object? artist = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceMangaImplCopyWith<$Res>
    implements $SourceMangaCopyWith<$Res> {
  factory _$$SourceMangaImplCopyWith(
          _$SourceMangaImpl value, $Res Function(_$SourceMangaImpl) then) =
      __$$SourceMangaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String url,
      String? description,
      String? author,
      @MangaStatusConverter() MangaStatus status,
      String? genre,
      String source,
      String lang,
      String? artist,
      String? thumbnailUrl});
}

/// @nodoc
class __$$SourceMangaImplCopyWithImpl<$Res>
    extends _$SourceMangaCopyWithImpl<$Res, _$SourceMangaImpl>
    implements _$$SourceMangaImplCopyWith<$Res> {
  __$$SourceMangaImplCopyWithImpl(
      _$SourceMangaImpl _value, $Res Function(_$SourceMangaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? description = freezed,
    Object? author = freezed,
    Object? status = null,
    Object? genre = freezed,
    Object? source = null,
    Object? lang = null,
    Object? artist = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$SourceMangaImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SourceMangaImpl extends _SourceManga {
  const _$SourceMangaImpl(
      {required this.title,
      required this.url,
      this.description,
      this.author,
      @MangaStatusConverter() this.status = MangaStatus.unknown,
      this.genre,
      required this.source,
      required this.lang,
      this.artist,
      this.thumbnailUrl})
      : super._();

  factory _$SourceMangaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceMangaImplFromJson(json);

  @override
  final String title;
  @override
  final String url;
  @override
  final String? description;
  @override
  final String? author;
  @override
  @JsonKey()
  @MangaStatusConverter()
  final MangaStatus status;
  @override
  final String? genre;
  @override
  final String source;
  @override
  final String lang;
  @override
  final String? artist;
  @override
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'SourceManga(title: $title, url: $url, description: $description, author: $author, status: $status, genre: $genre, source: $source, lang: $lang, artist: $artist, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceMangaImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, url, description, author,
      status, genre, source, lang, artist, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceMangaImplCopyWith<_$SourceMangaImpl> get copyWith =>
      __$$SourceMangaImplCopyWithImpl<_$SourceMangaImpl>(this, _$identity);
}

abstract class _SourceManga extends SourceManga {
  const factory _SourceManga(
      {required final String title,
      required final String url,
      final String? description,
      final String? author,
      @MangaStatusConverter() final MangaStatus status,
      final String? genre,
      required final String source,
      required final String lang,
      final String? artist,
      final String? thumbnailUrl}) = _$SourceMangaImpl;
  const _SourceManga._() : super._();

  factory _SourceManga.fromJson(Map<String, dynamic> json) =
      _$SourceMangaImpl.fromJson;

  @override
  String get title;
  @override
  String get url;
  @override
  String? get description;
  @override
  String? get author;
  @override
  @MangaStatusConverter()
  MangaStatus get status;
  @override
  String? get genre;
  @override
  String get source;
  @override
  String get lang;
  @override
  String? get artist;
  @override
  String? get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$SourceMangaImplCopyWith<_$SourceMangaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
