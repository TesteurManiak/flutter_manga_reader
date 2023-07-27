import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/relationship.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class ChapterData with _$ChapterData {
  const factory ChapterData({
    required String id,
    required ChapterAttributes attributes,
    @Default(<Relationship>[]) List<Relationship> relationships,
  }) = _ChapterData;

  factory ChapterData.fromJson(Map<String, dynamic> json) =>
      _$ChapterDataFromJson(json);
}

@freezed
class ChapterAttributes with _$ChapterAttributes {
  const factory ChapterAttributes({
    String? title,
    String? volume,
    String? chapter,
    @Default(0) int pages,
    required String publishAt,
    String? externalUrl,
  }) = _ChapterAttributes;

  factory ChapterAttributes.fromJson(Map<String, dynamic> json) =>
      _$ChapterAttributesFromJson(json);

  const ChapterAttributes._();

  bool get isInvalid => externalUrl != null && pages == 0;
}
