import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'chapter_download_task.freezed.dart';

@freezed
abstract class ChapterDownloadTask with _$ChapterDownloadTask {
  const factory ChapterDownloadTask({
    required Chapter chapter,
    required List<ChapterPage> pages,
    @Default(DownloadTaskStatus.pending) DownloadTaskStatus status,
    @Default(0) double progress,
    Map<String, String>? headers,
  }) = _ChapterDownloadTask;

  const ChapterDownloadTask._();

  List<String> get taskIds {
    return [
      for (final page in pages)
        if (page.imageUrl.isNotEmpty) page.imageUrl,
    ];
  }
}

enum DownloadTaskStatus { pending, downloading, completed, failed }
