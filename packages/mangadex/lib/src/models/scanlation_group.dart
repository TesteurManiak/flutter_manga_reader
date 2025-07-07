import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanlation_group.freezed.dart';
part 'scanlation_group.g.dart';

@Freezed(copyWith: false)
abstract class ScanlationGroupAttributes with _$ScanlationGroupAttributes {
  const factory ScanlationGroupAttributes({
    required String name,
  }) = _ScanlationGroupAttributes;

  factory ScanlationGroupAttributes.fromJson(Map<String, dynamic> json) =>
      _$ScanlationGroupAttributesFromJson(json);
}
