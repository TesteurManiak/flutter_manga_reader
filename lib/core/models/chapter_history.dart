import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'chapter_history.freezed.dart';

@freezed
abstract class ChapterHistory with _$ChapterHistory {
  const factory ChapterHistory({
    required Manga manga,
    required Chapter chapter,
    required DateTime readAt,
  }) = _ChapterHistory;
}
