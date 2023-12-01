// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Relationship _$RelationshipFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'manga':
      return MangaRelationship.fromJson(json);
    case 'author':
      return AuthorRelationship.fromJson(json);
    case 'artist':
      return ArtistRelationship.fromJson(json);
    case 'cover_art':
      return CoverArtRelationship.fromJson(json);
    case 'scanlation_group':
      return ScanlationGroupRelationship.fromJson(json);
    case 'user':
      return UserRelationship.fromJson(json);

    default:
      return OtherRelationship.fromJson(json);
  }
}

/// @nodoc
mixin _$Relationship {
  String get id => throw _privateConstructorUsedError;
  Object? get attributes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$MangaRelationshipImpl implements MangaRelationship {
  const _$MangaRelationshipImpl(
      {required this.id, this.attributes, final String? $type})
      : $type = $type ?? 'manga';

  factory _$MangaRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaRelationshipImplFromJson(json);

  @override
  final String id;
  @override
  final MangaAttributes? attributes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.manga(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return manga(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return manga?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (manga != null) {
      return manga(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return manga(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return manga?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (manga != null) {
      return manga(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaRelationshipImplToJson(
      this,
    );
  }
}

abstract class MangaRelationship implements Relationship {
  const factory MangaRelationship(
      {required final String id,
      final MangaAttributes? attributes}) = _$MangaRelationshipImpl;

  factory MangaRelationship.fromJson(Map<String, dynamic> json) =
      _$MangaRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  MangaAttributes? get attributes;
}

/// @nodoc
@JsonSerializable()
class _$AuthorRelationshipImpl implements AuthorRelationship {
  const _$AuthorRelationshipImpl(
      {required this.id, this.attributes, final String? $type})
      : $type = $type ?? 'author';

  factory _$AuthorRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorRelationshipImplFromJson(json);

  @override
  final String id;
  @override
  final GenericAttributes? attributes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.author(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return author(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return author?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (author != null) {
      return author(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return author(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return author?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (author != null) {
      return author(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorRelationshipImplToJson(
      this,
    );
  }
}

abstract class AuthorRelationship implements Relationship {
  const factory AuthorRelationship(
      {required final String id,
      final GenericAttributes? attributes}) = _$AuthorRelationshipImpl;

  factory AuthorRelationship.fromJson(Map<String, dynamic> json) =
      _$AuthorRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  GenericAttributes? get attributes;
}

/// @nodoc
@JsonSerializable()
class _$ArtistRelationshipImpl implements ArtistRelationship {
  const _$ArtistRelationshipImpl(
      {required this.id, this.attributes, final String? $type})
      : $type = $type ?? 'artist';

  factory _$ArtistRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistRelationshipImplFromJson(json);

  @override
  final String id;
  @override
  final GenericAttributes? attributes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.artist(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return artist(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return artist?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (artist != null) {
      return artist(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return artist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return artist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (artist != null) {
      return artist(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistRelationshipImplToJson(
      this,
    );
  }
}

abstract class ArtistRelationship implements Relationship {
  const factory ArtistRelationship(
      {required final String id,
      final GenericAttributes? attributes}) = _$ArtistRelationshipImpl;

  factory ArtistRelationship.fromJson(Map<String, dynamic> json) =
      _$ArtistRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  GenericAttributes? get attributes;
}

/// @nodoc
@JsonSerializable()
class _$CoverArtRelationshipImpl implements CoverArtRelationship {
  const _$CoverArtRelationshipImpl(
      {required this.id, this.attributes, final String? $type})
      : $type = $type ?? 'cover_art';

  factory _$CoverArtRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverArtRelationshipImplFromJson(json);

  @override
  final String id;
  @override
  final CoverArtAttributes? attributes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.coverArt(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverArtRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return coverArt(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return coverArt?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (coverArt != null) {
      return coverArt(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return coverArt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return coverArt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (coverArt != null) {
      return coverArt(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverArtRelationshipImplToJson(
      this,
    );
  }
}

abstract class CoverArtRelationship implements Relationship {
  const factory CoverArtRelationship(
      {required final String id,
      final CoverArtAttributes? attributes}) = _$CoverArtRelationshipImpl;

  factory CoverArtRelationship.fromJson(Map<String, dynamic> json) =
      _$CoverArtRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  CoverArtAttributes? get attributes;
}

/// @nodoc
@JsonSerializable()
class _$ScanlationGroupRelationshipImpl implements ScanlationGroupRelationship {
  const _$ScanlationGroupRelationshipImpl(
      {required this.id, this.attributes, final String? $type})
      : $type = $type ?? 'scanlation_group';

  factory _$ScanlationGroupRelationshipImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScanlationGroupRelationshipImplFromJson(json);

  @override
  final String id;
  @override
  final ScanlationGroupAttributes? attributes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.scanlationGroup(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanlationGroupRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return scanlationGroup(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return scanlationGroup?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (scanlationGroup != null) {
      return scanlationGroup(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return scanlationGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return scanlationGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (scanlationGroup != null) {
      return scanlationGroup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanlationGroupRelationshipImplToJson(
      this,
    );
  }
}

abstract class ScanlationGroupRelationship implements Relationship {
  const factory ScanlationGroupRelationship(
          {required final String id,
          final ScanlationGroupAttributes? attributes}) =
      _$ScanlationGroupRelationshipImpl;

  factory ScanlationGroupRelationship.fromJson(Map<String, dynamic> json) =
      _$ScanlationGroupRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  ScanlationGroupAttributes? get attributes;
}

/// @nodoc
@JsonSerializable()
class _$UserRelationshipImpl implements UserRelationship {
  const _$UserRelationshipImpl(
      {required this.id, this.attributes, final String? $type})
      : $type = $type ?? 'user';

  factory _$UserRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRelationshipImplFromJson(json);

  @override
  final String id;
  @override
  final UserAttributes? attributes;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.user(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return user(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return user?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRelationshipImplToJson(
      this,
    );
  }
}

abstract class UserRelationship implements Relationship {
  const factory UserRelationship(
      {required final String id,
      final UserAttributes? attributes}) = _$UserRelationshipImpl;

  factory UserRelationship.fromJson(Map<String, dynamic> json) =
      _$UserRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  UserAttributes? get attributes;
}

/// @nodoc
@JsonSerializable()
class _$OtherRelationshipImpl implements OtherRelationship {
  const _$OtherRelationshipImpl(
      {required this.id,
      final Map<String, dynamic>? attributes,
      final String? $type})
      : _attributes = attributes,
        $type = $type ?? 'other';

  factory _$OtherRelationshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherRelationshipImplFromJson(json);

  @override
  final String id;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Relationship.other(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_attributes));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, MangaAttributes? attributes) manga,
    required TResult Function(String id, GenericAttributes? attributes) author,
    required TResult Function(String id, GenericAttributes? attributes) artist,
    required TResult Function(String id, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(String id, ScanlationGroupAttributes? attributes)
        scanlationGroup,
    required TResult Function(String id, UserAttributes? attributes) user,
    required TResult Function(String id, Map<String, dynamic>? attributes)
        other,
  }) {
    return other(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, MangaAttributes? attributes)? manga,
    TResult? Function(String id, GenericAttributes? attributes)? author,
    TResult? Function(String id, GenericAttributes? attributes)? artist,
    TResult? Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult? Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult? Function(String id, UserAttributes? attributes)? user,
    TResult? Function(String id, Map<String, dynamic>? attributes)? other,
  }) {
    return other?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, MangaAttributes? attributes)? manga,
    TResult Function(String id, GenericAttributes? attributes)? author,
    TResult Function(String id, GenericAttributes? attributes)? artist,
    TResult Function(String id, CoverArtAttributes? attributes)? coverArt,
    TResult Function(String id, ScanlationGroupAttributes? attributes)?
        scanlationGroup,
    TResult Function(String id, UserAttributes? attributes)? user,
    TResult Function(String id, Map<String, dynamic>? attributes)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MangaRelationship value) manga,
    required TResult Function(AuthorRelationship value) author,
    required TResult Function(ArtistRelationship value) artist,
    required TResult Function(CoverArtRelationship value) coverArt,
    required TResult Function(ScanlationGroupRelationship value)
        scanlationGroup,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)? scanlationGroup,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherRelationshipImplToJson(
      this,
    );
  }
}

abstract class OtherRelationship implements Relationship {
  const factory OtherRelationship(
      {required final String id,
      final Map<String, dynamic>? attributes}) = _$OtherRelationshipImpl;

  factory OtherRelationship.fromJson(Map<String, dynamic> json) =
      _$OtherRelationshipImpl.fromJson;

  @override
  String get id;
  @override
  Map<String, dynamic>? get attributes;
}
