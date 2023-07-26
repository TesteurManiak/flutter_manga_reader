import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@freezed
class Relationship with _$Relationship {
  const factory Relationship({
    required String id,
    required String type,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, dynamic> json) =>
      _$RelationshipFromJson(json);

  const Relationship._();

  bool get isManga => type == 'manga';
  bool get isCover => type == 'cover_art';
}
