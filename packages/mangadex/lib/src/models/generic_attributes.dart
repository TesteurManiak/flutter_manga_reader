import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_attributes.freezed.dart';
part 'generic_attributes.g.dart';

@Freezed(copyWith: false)
class GenericAttributes with _$GenericAttributes {
  const factory GenericAttributes({
    required String name,
  }) = _GenericAttributes;

  factory GenericAttributes.fromJson(Map<String, dynamic> json) =>
      _$GenericAttributesFromJson(json);
}
