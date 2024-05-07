import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'chapter_download_task.freezed.dart';

@freezed
class ChapterDownloadTask with _$ChapterDownloadTask {
  const factory ChapterDownloadTask({
    required Chapter chapter,
    required List<ChapterPage> pages,
    @Default(DownloadTaskStatus.pending) DownloadTaskStatus status,
    @Default(0) double progress,
  }) = _ChapterDownloadTask;
}

enum DownloadTaskStatus {
  pending,
  downloading,
  completed,
  failed,
}
