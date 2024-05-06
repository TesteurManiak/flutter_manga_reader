import 'package:background_downloader/background_downloader.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chapter_download_progress_controller.g.dart';

@riverpod
class ChapterDownloadProgressController
    extends _$ChapterDownloadProgressController {
  @override
  Future<double> build(Chapter chapter) async {
    final downloaded =
        await ref.watch(chapterDownloadedProvider(chapter).future);
    return downloaded ? 100 : 0;
  }

  void updateProgress(double progress) => state = AsyncData(progress);
}

@riverpod
Future<bool> chapterDownloaded(
  ChapterDownloadedRef ref,
  Chapter chapter,
) async {
  // TODO(Guillaume): check if the chapter is already downloaded
  final db = FileDownloader().database;
  final tasks = await db.allRecordsWithStatus(TaskStatus.complete);
  return tasks.any((e) => e.taskId.startsWith('${chapter.id}-'));
}
