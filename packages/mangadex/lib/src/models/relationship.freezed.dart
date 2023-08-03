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

/// @nodoc
mixin _$Relationship {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Object? get attributes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelationshipCopyWith<Relationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationshipCopyWith<$Res> {
  factory $RelationshipCopyWith(
          Relationship value, $Res Function(Relationship) then) =
      _$RelationshipCopyWithImpl<$Res, Relationship>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$RelationshipCopyWithImpl<$Res, $Val extends Relationship>
    implements $RelationshipCopyWith<$Res> {
  _$RelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$MangaRelationshipCopyWith(
          _$MangaRelationship value, $Res Function(_$MangaRelationship) then) =
      __$$MangaRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, MangaAttributes? attributes});

  $MangaAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$MangaRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$MangaRelationship>
    implements _$$MangaRelationshipCopyWith<$Res> {
  __$$MangaRelationshipCopyWithImpl(
      _$MangaRelationship _value, $Res Function(_$MangaRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$MangaRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as MangaAttributes?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaAttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $MangaAttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc

class _$MangaRelationship implements MangaRelationship {
  const _$MangaRelationship(
      {required this.id, required this.type, this.attributes});

  @override
  final String id;
  @override
  final String type;
  @override
  final MangaAttributes? attributes;

  @override
  String toString() {
    return 'Relationship.manga(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaRelationshipCopyWith<_$MangaRelationship> get copyWith =>
      __$$MangaRelationshipCopyWithImpl<_$MangaRelationship>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return manga(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return manga?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (manga != null) {
      return manga(id, type, attributes);
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (manga != null) {
      return manga(this);
    }
    return orElse();
  }
}

abstract class MangaRelationship implements Relationship {
  const factory MangaRelationship(
      {required final String id,
      required final String type,
      final MangaAttributes? attributes}) = _$MangaRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  MangaAttributes? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$MangaRelationshipCopyWith<_$MangaRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$AuthorRelationshipCopyWith(_$AuthorRelationship value,
          $Res Function(_$AuthorRelationship) then) =
      __$$AuthorRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, GenericAttributes? attributes});
}

/// @nodoc
class __$$AuthorRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$AuthorRelationship>
    implements _$$AuthorRelationshipCopyWith<$Res> {
  __$$AuthorRelationshipCopyWithImpl(
      _$AuthorRelationship _value, $Res Function(_$AuthorRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$AuthorRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as GenericAttributes?,
    ));
  }
}

/// @nodoc

class _$AuthorRelationship implements AuthorRelationship {
  const _$AuthorRelationship(
      {required this.id, required this.type, this.attributes});

  @override
  final String id;
  @override
  final String type;
  @override
  final GenericAttributes? attributes;

  @override
  String toString() {
    return 'Relationship.author(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorRelationshipCopyWith<_$AuthorRelationship> get copyWith =>
      __$$AuthorRelationshipCopyWithImpl<_$AuthorRelationship>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return author(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return author?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (author != null) {
      return author(id, type, attributes);
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (author != null) {
      return author(this);
    }
    return orElse();
  }
}

abstract class AuthorRelationship implements Relationship {
  const factory AuthorRelationship(
      {required final String id,
      required final String type,
      final GenericAttributes? attributes}) = _$AuthorRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  GenericAttributes? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$AuthorRelationshipCopyWith<_$AuthorRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$ArtistRelationshipCopyWith(_$ArtistRelationship value,
          $Res Function(_$ArtistRelationship) then) =
      __$$ArtistRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, GenericAttributes? attributes});
}

/// @nodoc
class __$$ArtistRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$ArtistRelationship>
    implements _$$ArtistRelationshipCopyWith<$Res> {
  __$$ArtistRelationshipCopyWithImpl(
      _$ArtistRelationship _value, $Res Function(_$ArtistRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$ArtistRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as GenericAttributes?,
    ));
  }
}

/// @nodoc

class _$ArtistRelationship implements ArtistRelationship {
  const _$ArtistRelationship(
      {required this.id, required this.type, this.attributes});

  @override
  final String id;
  @override
  final String type;
  @override
  final GenericAttributes? attributes;

  @override
  String toString() {
    return 'Relationship.artist(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistRelationshipCopyWith<_$ArtistRelationship> get copyWith =>
      __$$ArtistRelationshipCopyWithImpl<_$ArtistRelationship>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return artist(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return artist?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (artist != null) {
      return artist(id, type, attributes);
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (artist != null) {
      return artist(this);
    }
    return orElse();
  }
}

abstract class ArtistRelationship implements Relationship {
  const factory ArtistRelationship(
      {required final String id,
      required final String type,
      final GenericAttributes? attributes}) = _$ArtistRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  GenericAttributes? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$ArtistRelationshipCopyWith<_$ArtistRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoverArtRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$CoverArtRelationshipCopyWith(_$CoverArtRelationship value,
          $Res Function(_$CoverArtRelationship) then) =
      __$$CoverArtRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, CoverArtAttributes? attributes});

  $CoverArtAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$CoverArtRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$CoverArtRelationship>
    implements _$$CoverArtRelationshipCopyWith<$Res> {
  __$$CoverArtRelationshipCopyWithImpl(_$CoverArtRelationship _value,
      $Res Function(_$CoverArtRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$CoverArtRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CoverArtAttributes?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverArtAttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $CoverArtAttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc

class _$CoverArtRelationship implements CoverArtRelationship {
  const _$CoverArtRelationship(
      {required this.id, required this.type, this.attributes});

  @override
  final String id;
  @override
  final String type;
  @override
  final CoverArtAttributes? attributes;

  @override
  String toString() {
    return 'Relationship.coverArt(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverArtRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverArtRelationshipCopyWith<_$CoverArtRelationship> get copyWith =>
      __$$CoverArtRelationshipCopyWithImpl<_$CoverArtRelationship>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return coverArt(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return coverArt?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (coverArt != null) {
      return coverArt(id, type, attributes);
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (coverArt != null) {
      return coverArt(this);
    }
    return orElse();
  }
}

abstract class CoverArtRelationship implements Relationship {
  const factory CoverArtRelationship(
      {required final String id,
      required final String type,
      final CoverArtAttributes? attributes}) = _$CoverArtRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  CoverArtAttributes? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CoverArtRelationshipCopyWith<_$CoverArtRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanlationGroupRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$ScanlationGroupRelationshipCopyWith(
          _$ScanlationGroupRelationship value,
          $Res Function(_$ScanlationGroupRelationship) then) =
      __$$ScanlationGroupRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, ScanlationGroupAttributes? attributes});
}

/// @nodoc
class __$$ScanlationGroupRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$ScanlationGroupRelationship>
    implements _$$ScanlationGroupRelationshipCopyWith<$Res> {
  __$$ScanlationGroupRelationshipCopyWithImpl(
      _$ScanlationGroupRelationship _value,
      $Res Function(_$ScanlationGroupRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$ScanlationGroupRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ScanlationGroupAttributes?,
    ));
  }
}

/// @nodoc

class _$ScanlationGroupRelationship implements ScanlationGroupRelationship {
  const _$ScanlationGroupRelationship(
      {required this.id, required this.type, this.attributes});

  @override
  final String id;
  @override
  final String type;
  @override
  final ScanlationGroupAttributes? attributes;

  @override
  String toString() {
    return 'Relationship.scanlationGroupRelationship(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanlationGroupRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanlationGroupRelationshipCopyWith<_$ScanlationGroupRelationship>
      get copyWith => __$$ScanlationGroupRelationshipCopyWithImpl<
          _$ScanlationGroupRelationship>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return scanlationGroupRelationship(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return scanlationGroupRelationship?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (scanlationGroupRelationship != null) {
      return scanlationGroupRelationship(id, type, attributes);
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
        scanlationGroupRelationship,
    required TResult Function(UserRelationship value) user,
    required TResult Function(OtherRelationship value) other,
  }) {
    return scanlationGroupRelationship(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MangaRelationship value)? manga,
    TResult? Function(AuthorRelationship value)? author,
    TResult? Function(ArtistRelationship value)? artist,
    TResult? Function(CoverArtRelationship value)? coverArt,
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult? Function(UserRelationship value)? user,
    TResult? Function(OtherRelationship value)? other,
  }) {
    return scanlationGroupRelationship?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MangaRelationship value)? manga,
    TResult Function(AuthorRelationship value)? author,
    TResult Function(ArtistRelationship value)? artist,
    TResult Function(CoverArtRelationship value)? coverArt,
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (scanlationGroupRelationship != null) {
      return scanlationGroupRelationship(this);
    }
    return orElse();
  }
}

abstract class ScanlationGroupRelationship implements Relationship {
  const factory ScanlationGroupRelationship(
          {required final String id,
          required final String type,
          final ScanlationGroupAttributes? attributes}) =
      _$ScanlationGroupRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  ScanlationGroupAttributes? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$ScanlationGroupRelationshipCopyWith<_$ScanlationGroupRelationship>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$UserRelationshipCopyWith(
          _$UserRelationship value, $Res Function(_$UserRelationship) then) =
      __$$UserRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, UserAttributes? attributes});
}

/// @nodoc
class __$$UserRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$UserRelationship>
    implements _$$UserRelationshipCopyWith<$Res> {
  __$$UserRelationshipCopyWithImpl(
      _$UserRelationship _value, $Res Function(_$UserRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$UserRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as UserAttributes?,
    ));
  }
}

/// @nodoc

class _$UserRelationship implements UserRelationship {
  const _$UserRelationship(
      {required this.id, required this.type, this.attributes});

  @override
  final String id;
  @override
  final String type;
  @override
  final UserAttributes? attributes;

  @override
  String toString() {
    return 'Relationship.user(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRelationshipCopyWith<_$UserRelationship> get copyWith =>
      __$$UserRelationshipCopyWithImpl<_$UserRelationship>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return user(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return user?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, type, attributes);
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class UserRelationship implements Relationship {
  const factory UserRelationship(
      {required final String id,
      required final String type,
      final UserAttributes? attributes}) = _$UserRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  UserAttributes? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UserRelationshipCopyWith<_$UserRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherRelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$OtherRelationshipCopyWith(
          _$OtherRelationship value, $Res Function(_$OtherRelationship) then) =
      __$$OtherRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$OtherRelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$OtherRelationship>
    implements _$$OtherRelationshipCopyWith<$Res> {
  __$$OtherRelationshipCopyWithImpl(
      _$OtherRelationship _value, $Res Function(_$OtherRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$OtherRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$OtherRelationship implements OtherRelationship {
  const _$OtherRelationship(
      {required this.id,
      required this.type,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  @override
  final String id;
  @override
  final String type;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Relationship.other(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherRelationshipCopyWith<_$OtherRelationship> get copyWith =>
      __$$OtherRelationshipCopyWithImpl<_$OtherRelationship>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String type, MangaAttributes? attributes)
        manga,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        author,
    required TResult Function(
            String id, String type, GenericAttributes? attributes)
        artist,
    required TResult Function(
            String id, String type, CoverArtAttributes? attributes)
        coverArt,
    required TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)
        scanlationGroupRelationship,
    required TResult Function(
            String id, String type, UserAttributes? attributes)
        user,
    required TResult Function(
            String id, String type, Map<String, dynamic>? attributes)
        other,
  }) {
    return other(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult? Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult? Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult? Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult? Function(String id, String type, UserAttributes? attributes)? user,
    TResult? Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
  }) {
    return other?.call(id, type, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, MangaAttributes? attributes)?
        manga,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        author,
    TResult Function(String id, String type, GenericAttributes? attributes)?
        artist,
    TResult Function(String id, String type, CoverArtAttributes? attributes)?
        coverArt,
    TResult Function(
            String id, String type, ScanlationGroupAttributes? attributes)?
        scanlationGroupRelationship,
    TResult Function(String id, String type, UserAttributes? attributes)? user,
    TResult Function(String id, String type, Map<String, dynamic>? attributes)?
        other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(id, type, attributes);
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
        scanlationGroupRelationship,
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
    TResult? Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
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
    TResult Function(ScanlationGroupRelationship value)?
        scanlationGroupRelationship,
    TResult Function(UserRelationship value)? user,
    TResult Function(OtherRelationship value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherRelationship implements Relationship {
  const factory OtherRelationship(
      {required final String id,
      required final String type,
      final Map<String, dynamic>? attributes}) = _$OtherRelationship;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$OtherRelationshipCopyWith<_$OtherRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

RawRelationship _$RawRelationshipFromJson(Map<String, dynamic> json) {
  return _RawRelationship.fromJson(json);
}

/// @nodoc
mixin _$RawRelationship {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawRelationshipCopyWith<RawRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawRelationshipCopyWith<$Res> {
  factory $RawRelationshipCopyWith(
          RawRelationship value, $Res Function(RawRelationship) then) =
      _$RawRelationshipCopyWithImpl<$Res, RawRelationship>;
  @useResult
  $Res call({String id, String type, Map<String, dynamic>? attributes});
}

/// @nodoc
class _$RawRelationshipCopyWithImpl<$Res, $Val extends RawRelationship>
    implements $RawRelationshipCopyWith<$Res> {
  _$RawRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RawRelationshipCopyWith<$Res>
    implements $RawRelationshipCopyWith<$Res> {
  factory _$$_RawRelationshipCopyWith(
          _$_RawRelationship value, $Res Function(_$_RawRelationship) then) =
      __$$_RawRelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$_RawRelationshipCopyWithImpl<$Res>
    extends _$RawRelationshipCopyWithImpl<$Res, _$_RawRelationship>
    implements _$$_RawRelationshipCopyWith<$Res> {
  __$$_RawRelationshipCopyWithImpl(
      _$_RawRelationship _value, $Res Function(_$_RawRelationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? attributes = freezed,
  }) {
    return _then(_$_RawRelationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RawRelationship implements _RawRelationship {
  const _$_RawRelationship(
      {required this.id,
      required this.type,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  factory _$_RawRelationship.fromJson(Map<String, dynamic> json) =>
      _$$_RawRelationshipFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RawRelationship(id: $id, type: $type, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RawRelationshipCopyWith<_$_RawRelationship> get copyWith =>
      __$$_RawRelationshipCopyWithImpl<_$_RawRelationship>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawRelationshipToJson(
      this,
    );
  }
}

abstract class _RawRelationship implements RawRelationship {
  const factory _RawRelationship(
      {required final String id,
      required final String type,
      final Map<String, dynamic>? attributes}) = _$_RawRelationship;

  factory _RawRelationship.fromJson(Map<String, dynamic> json) =
      _$_RawRelationship.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_RawRelationshipCopyWith<_$_RawRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}
