import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/chapter.dart';

part 'chapter_response.freezed.dart';
part 'chapter_response.g.dart';

@freezed
class ChapterResponse with _$ChapterResponse {
  const factory ChapterResponse({
    @Default(<ChapterData>[]) List<ChapterData> data,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _ChapterResponse;

  factory ChapterResponse.fromJson(Map<String, dynamic> json) =>
      _$ChapterResponseFromJson(json);
}
