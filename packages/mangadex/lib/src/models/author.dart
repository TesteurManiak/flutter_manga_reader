import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@freezed
class AuthorAttributes with _$AuthorAttributes {
  const factory AuthorAttributes({
    required String name,
  }) = _AuthorAttributes;

  factory AuthorAttributes.fromJson(Map<String, dynamic> json) =>
      _$AuthorAttributesFromJson(json);
}
