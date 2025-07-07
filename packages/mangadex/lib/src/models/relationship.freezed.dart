// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
