import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:mangadex/src/models/relationship.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
abstract class ChapterResponse with _$ChapterResponse {
  const factory ChapterResponse({
    @Default(<ChapterData>[]) List<ChapterData> data,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _ChapterResponse;

  factory ChapterResponse.fromJson(Map<String, dynamic> json) =>
      _$ChapterResponseFromJson(json);

  const ChapterResponse._();

  bool get hasMore => offset + limit < total;
}

@freezed
abstract class ChapterData with _$ChapterData {
  const factory ChapterData({
    required String id,
    required ChapterAttributes attributes,
    @Default(<Relationship>[]) List<Relationship> relationships,
  }) = _ChapterData;

  factory ChapterData.fromJson(Map<String, dynamic> json) =>
      _$ChapterDataFromJson(json);
}

@freezed
abstract class ChapterAttributes with _$ChapterAttributes {
  const factory ChapterAttributes({
    String? title,
    String? volume,
    String? chapter,
    @Default(0) int pages,
    @DtConverter() DateTime? publishAt,
    @DtConverter() DateTime? readableAt,
    @DtConverter() DateTime? createdAt,
    @DtConverter() DateTime? updatedAt,
    String? externalUrl,
  }) = _ChapterAttributes;

  factory ChapterAttributes.fromJson(Map<String, dynamic> json) =>
      _$ChapterAttributesFromJson(json);

  const ChapterAttributes._();

  bool get isInvalid => externalUrl != null && pages == 0;
}

class DtConverter extends JsonConverter<DateTime?, String?> {
  const DtConverter();

  static final formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss+SSS", 'en_US');

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return formatter.tryParse(json)?.toUtc();
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return formatter.format(object);
  }
}
