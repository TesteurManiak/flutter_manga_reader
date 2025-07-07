import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/chapter.dart';

part 'source_chapter.freezed.dart';
part 'source_chapter.g.dart';

/// Model used to handle chapter data fetched from a remote datasource.
///
/// It doesn't have an id because it's not stored in the database.
@Freezed(toJson: false)
abstract class SourceChapter with _$SourceChapter {
  const factory SourceChapter({
    required String url,
    required String name,
    DateTime? dateUpload,
    @Default(-1.0) double chapterNumber,
    String? scanlator,
  }) = _SourceChapter;

  factory SourceChapter.fromJson(Map<String, dynamic> json) =>
      _$SourceChapterFromJson(json);

  factory SourceChapter.fromModel(Chapter chapter) {
    return SourceChapter.fromJson(chapter.toJson());
  }
}
