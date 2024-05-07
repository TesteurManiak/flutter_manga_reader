import 'dart:io';

import 'package:flutter_manga_reader/core/extensions/chapter_extensions.dart';
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
  final localPath = await ref.read(chapterLocalPathProvider(chapter).future);
  final localDir = Directory(localPath);

  final dirExists = localDir.existsSync();
  if (!dirExists) return false;

  final files = localDir.listSync();
  return files.isNotEmpty;
}

@riverpod
Future<String> chapterLocalPath(ChapterLocalPathRef ref, Chapter chapter) {
  return chapter.getLocalPath();
}
