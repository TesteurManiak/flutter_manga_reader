import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chapter_download_progress_controller.g.dart';

@riverpod
class ChapterDownloadProgressController
    extends _$ChapterDownloadProgressController {
  @override
  double build(Chapter chapter) => 0;

  void updateProgress(double progress) => state = progress;
}
