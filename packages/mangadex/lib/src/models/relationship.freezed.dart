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
  return _Relationship.fromJson(json);
}

/// @nodoc
mixin _$Relationship {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_RelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$_RelationshipCopyWith(
          _$_Relationship value, $Res Function(_$_Relationship) then) =
      __$$_RelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class __$$_RelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$_Relationship>
    implements _$$_RelationshipCopyWith<$Res> {
  __$$_RelationshipCopyWithImpl(
      _$_Relationship _value, $Res Function(_$_Relationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$_Relationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Relationship extends _Relationship {
  const _$_Relationship({required this.id, required this.type}) : super._();

  factory _$_Relationship.fromJson(Map<String, dynamic> json) =>
      _$$_RelationshipFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'Relationship(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Relationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelationshipCopyWith<_$_Relationship> get copyWith =>
      __$$_RelationshipCopyWithImpl<_$_Relationship>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelationshipToJson(
      this,
    );
  }
}

abstract class _Relationship extends Relationship {
  const factory _Relationship(
      {required final String id, required final String type}) = _$_Relationship;
  const _Relationship._() : super._();

  factory _Relationship.fromJson(Map<String, dynamic> json) =
      _$_Relationship.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_RelationshipCopyWith<_$_Relationship> get copyWith =>
      throw _privateConstructorUsedError;
}
