// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Relationship _$RelationshipFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'manga':
          return MangaRelationship.fromJson(
            json
          );
                case 'author':
          return AuthorRelationship.fromJson(
            json
          );
                case 'artist':
          return ArtistRelationship.fromJson(
            json
          );
                case 'cover_art':
          return CoverArtRelationship.fromJson(
            json
          );
                case 'scanlation_group':
          return ScanlationGroupRelationship.fromJson(
            json
          );
                case 'user':
          return UserRelationship.fromJson(
            json
          );
        
          default:
            return OtherRelationship.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$Relationship {

 String get id; Object? get attributes;

  /// Serializes this Relationship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relationship&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.attributes, attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(attributes));

@override
String toString() {
  return 'Relationship(id: $id, attributes: $attributes)';
}


}




/// Adds pattern-matching-related methods to [Relationship].
extension RelationshipPatterns on Relationship {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MangaRelationship value)?  manga,TResult Function( AuthorRelationship value)?  author,TResult Function( ArtistRelationship value)?  artist,TResult Function( CoverArtRelationship value)?  coverArt,TResult Function( ScanlationGroupRelationship value)?  scanlationGroup,TResult Function( UserRelationship value)?  user,TResult Function( OtherRelationship value)?  other,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MangaRelationship() when manga != null:
return manga(_that);case AuthorRelationship() when author != null:
return author(_that);case ArtistRelationship() when artist != null:
return artist(_that);case CoverArtRelationship() when coverArt != null:
return coverArt(_that);case ScanlationGroupRelationship() when scanlationGroup != null:
return scanlationGroup(_that);case UserRelationship() when user != null:
return user(_that);case OtherRelationship() when other != null:
return other(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MangaRelationship value)  manga,required TResult Function( AuthorRelationship value)  author,required TResult Function( ArtistRelationship value)  artist,required TResult Function( CoverArtRelationship value)  coverArt,required TResult Function( ScanlationGroupRelationship value)  scanlationGroup,required TResult Function( UserRelationship value)  user,required TResult Function( OtherRelationship value)  other,}){
final _that = this;
switch (_that) {
case MangaRelationship():
return manga(_that);case AuthorRelationship():
return author(_that);case ArtistRelationship():
return artist(_that);case CoverArtRelationship():
return coverArt(_that);case ScanlationGroupRelationship():
return scanlationGroup(_that);case UserRelationship():
return user(_that);case OtherRelationship():
return other(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MangaRelationship value)?  manga,TResult? Function( AuthorRelationship value)?  author,TResult? Function( ArtistRelationship value)?  artist,TResult? Function( CoverArtRelationship value)?  coverArt,TResult? Function( ScanlationGroupRelationship value)?  scanlationGroup,TResult? Function( UserRelationship value)?  user,TResult? Function( OtherRelationship value)?  other,}){
final _that = this;
switch (_that) {
case MangaRelationship() when manga != null:
return manga(_that);case AuthorRelationship() when author != null:
return author(_that);case ArtistRelationship() when artist != null:
return artist(_that);case CoverArtRelationship() when coverArt != null:
return coverArt(_that);case ScanlationGroupRelationship() when scanlationGroup != null:
return scanlationGroup(_that);case UserRelationship() when user != null:
return user(_that);case OtherRelationship() when other != null:
return other(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  MangaAttributes? attributes)?  manga,TResult Function( String id,  GenericAttributes? attributes)?  author,TResult Function( String id,  GenericAttributes? attributes)?  artist,TResult Function( String id,  CoverArtAttributes? attributes)?  coverArt,TResult Function( String id,  ScanlationGroupAttributes? attributes)?  scanlationGroup,TResult Function( String id,  UserAttributes? attributes)?  user,TResult Function( String id,  Map<String, dynamic>? attributes)?  other,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MangaRelationship() when manga != null:
return manga(_that.id,_that.attributes);case AuthorRelationship() when author != null:
return author(_that.id,_that.attributes);case ArtistRelationship() when artist != null:
return artist(_that.id,_that.attributes);case CoverArtRelationship() when coverArt != null:
return coverArt(_that.id,_that.attributes);case ScanlationGroupRelationship() when scanlationGroup != null:
return scanlationGroup(_that.id,_that.attributes);case UserRelationship() when user != null:
return user(_that.id,_that.attributes);case OtherRelationship() when other != null:
return other(_that.id,_that.attributes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  MangaAttributes? attributes)  manga,required TResult Function( String id,  GenericAttributes? attributes)  author,required TResult Function( String id,  GenericAttributes? attributes)  artist,required TResult Function( String id,  CoverArtAttributes? attributes)  coverArt,required TResult Function( String id,  ScanlationGroupAttributes? attributes)  scanlationGroup,required TResult Function( String id,  UserAttributes? attributes)  user,required TResult Function( String id,  Map<String, dynamic>? attributes)  other,}) {final _that = this;
switch (_that) {
case MangaRelationship():
return manga(_that.id,_that.attributes);case AuthorRelationship():
return author(_that.id,_that.attributes);case ArtistRelationship():
return artist(_that.id,_that.attributes);case CoverArtRelationship():
return coverArt(_that.id,_that.attributes);case ScanlationGroupRelationship():
return scanlationGroup(_that.id,_that.attributes);case UserRelationship():
return user(_that.id,_that.attributes);case OtherRelationship():
return other(_that.id,_that.attributes);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  MangaAttributes? attributes)?  manga,TResult? Function( String id,  GenericAttributes? attributes)?  author,TResult? Function( String id,  GenericAttributes? attributes)?  artist,TResult? Function( String id,  CoverArtAttributes? attributes)?  coverArt,TResult? Function( String id,  ScanlationGroupAttributes? attributes)?  scanlationGroup,TResult? Function( String id,  UserAttributes? attributes)?  user,TResult? Function( String id,  Map<String, dynamic>? attributes)?  other,}) {final _that = this;
switch (_that) {
case MangaRelationship() when manga != null:
return manga(_that.id,_that.attributes);case AuthorRelationship() when author != null:
return author(_that.id,_that.attributes);case ArtistRelationship() when artist != null:
return artist(_that.id,_that.attributes);case CoverArtRelationship() when coverArt != null:
return coverArt(_that.id,_that.attributes);case ScanlationGroupRelationship() when scanlationGroup != null:
return scanlationGroup(_that.id,_that.attributes);case UserRelationship() when user != null:
return user(_that.id,_that.attributes);case OtherRelationship() when other != null:
return other(_that.id,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class MangaRelationship implements Relationship {
  const MangaRelationship({required this.id, this.attributes, final  String? $type}): $type = $type ?? 'manga';
  factory MangaRelationship.fromJson(Map<String, dynamic> json) => _$MangaRelationshipFromJson(json);

@override final  String id;
@override final  MangaAttributes? attributes;

@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$MangaRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaRelationship&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Relationship.manga(id: $id, attributes: $attributes)';
}


}




/// @nodoc
@JsonSerializable()

class AuthorRelationship implements Relationship {
  const AuthorRelationship({required this.id, this.attributes, final  String? $type}): $type = $type ?? 'author';
  factory AuthorRelationship.fromJson(Map<String, dynamic> json) => _$AuthorRelationshipFromJson(json);

@override final  String id;
@override final  GenericAttributes? attributes;

@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AuthorRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorRelationship&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Relationship.author(id: $id, attributes: $attributes)';
}


}




/// @nodoc
@JsonSerializable()

class ArtistRelationship implements Relationship {
  const ArtistRelationship({required this.id, this.attributes, final  String? $type}): $type = $type ?? 'artist';
  factory ArtistRelationship.fromJson(Map<String, dynamic> json) => _$ArtistRelationshipFromJson(json);

@override final  String id;
@override final  GenericAttributes? attributes;

@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ArtistRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistRelationship&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Relationship.artist(id: $id, attributes: $attributes)';
}


}




/// @nodoc
@JsonSerializable()

class CoverArtRelationship implements Relationship {
  const CoverArtRelationship({required this.id, this.attributes, final  String? $type}): $type = $type ?? 'cover_art';
  factory CoverArtRelationship.fromJson(Map<String, dynamic> json) => _$CoverArtRelationshipFromJson(json);

@override final  String id;
@override final  CoverArtAttributes? attributes;

@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$CoverArtRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoverArtRelationship&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Relationship.coverArt(id: $id, attributes: $attributes)';
}


}




/// @nodoc
@JsonSerializable()

class ScanlationGroupRelationship implements Relationship {
  const ScanlationGroupRelationship({required this.id, this.attributes, final  String? $type}): $type = $type ?? 'scanlation_group';
  factory ScanlationGroupRelationship.fromJson(Map<String, dynamic> json) => _$ScanlationGroupRelationshipFromJson(json);

@override final  String id;
@override final  ScanlationGroupAttributes? attributes;

@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ScanlationGroupRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanlationGroupRelationship&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Relationship.scanlationGroup(id: $id, attributes: $attributes)';
}


}




/// @nodoc
@JsonSerializable()

class UserRelationship implements Relationship {
  const UserRelationship({required this.id, this.attributes, final  String? $type}): $type = $type ?? 'user';
  factory UserRelationship.fromJson(Map<String, dynamic> json) => _$UserRelationshipFromJson(json);

@override final  String id;
@override final  UserAttributes? attributes;

@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UserRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRelationship&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'Relationship.user(id: $id, attributes: $attributes)';
}


}




/// @nodoc
@JsonSerializable()

class OtherRelationship implements Relationship {
  const OtherRelationship({required this.id, final  Map<String, dynamic>? attributes, final  String? $type}): _attributes = attributes,$type = $type ?? 'other';
  factory OtherRelationship.fromJson(Map<String, dynamic> json) => _$OtherRelationshipFromJson(json);

@override final  String id;
 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$OtherRelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherRelationship&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._attributes, _attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_attributes));

@override
String toString() {
  return 'Relationship.other(id: $id, attributes: $attributes)';
}


}




// dart format on
