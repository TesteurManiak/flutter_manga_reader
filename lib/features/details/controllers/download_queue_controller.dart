import 'dart:async';
import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter_manga_reader/core/extensions/chapter_extensions.dart';
import 'package:flutter_manga_reader/core/providers/directories.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/details/models/chapter_download_task.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'download_queue_controller.g.dart';

@Riverpod(keepAlive: true, dependencies: [localDatasource, fetchChapterPages])
class DownloadQueueController extends _$DownloadQueueController {
  @override
  Map<int, ChapterDownloadTask> build() {
    final localDatasource = ref.watch(localDatasourceProvider);

    ref.listenSelf((_, next) {
      final (:completedTaskIds, :failedTaskIds) =
          _parseTasks(next.values.toList());

      if (completedTaskIds.isEmpty && failedTaskIds.isEmpty) return;

      localDatasource.setChaptersDownloaded(
        chapterIds: completedTaskIds,
        downloaded: true,
      );

      // Remove completed & failed tasks
      final newMap = Map.of(state);
      for (final id in completedTaskIds) {
        newMap.remove(id);
      }
      for (final id in failedTaskIds) {
        newMap.remove(id);
      }
      state = newMap;
    });

    return {};
  }

  Future<void> queueChapter(Chapter chapter) async {
    final result = await ref
        .read(fetchChapterPagesProvider(chapter.toSourceModel()).future);
    if (result case Success(success: final pages) when pages.isNotEmpty) {
      final task = ChapterDownloadTask(chapter: chapter, pages: pages);
      state = {...state, chapter.id: task};

      final baseDir =
          await ref.read(applicationDocumentsDirectoryProvider.future);

      unawaited(
        FileDownloader().downloadBatch(
          task.toDownloadTaskBatch(baseDir),
          batchProgressCallback: (success, failed) {
            if (failed > 0) {
              _onDownloadTaskError(chapter.id);
              return;
            }

            final progress = (success + failed) / task.pages.length;
            _updateProgress(chapter.id, progress);
          },
        ),
      );
    }
  }

  void _updateProgress(int chapterId, double progress) {
    if (state[chapterId] case final task?) {
      final newTask = task.copyWith(
        progress: progress,
        status: progress == 1
            ? DownloadTaskStatus.completed
            : DownloadTaskStatus.downloading,
      );
      state = {...state, chapterId: newTask};
    }
  }

  void _onDownloadTaskError(int chapterId) {
    if (state[chapterId] case final task?
        when task.status != DownloadTaskStatus.failed) {
      final newTask = task.copyWith(status: DownloadTaskStatus.failed);
      state = {...state, chapterId: newTask};
    }
  }
}

typedef _RemovableTaskRecord = ({
  List<int> completedTaskIds,
  List<int> failedTaskIds
});

_RemovableTaskRecord _parseTasks(List<ChapterDownloadTask> tasks) {
  final completedTaskIds = <int>[];
  final failedTaskIds = <int>[];

  for (final task in tasks) {
    if (task.status == DownloadTaskStatus.completed) {
      completedTaskIds.add(task.chapter.id);
    } else if (task.status == DownloadTaskStatus.failed) {
      failedTaskIds.add(task.chapter.id);
    }
  }

  return (completedTaskIds: completedTaskIds, failedTaskIds: failedTaskIds);
}

@Riverpod(dependencies: [DownloadQueueController])
ChapterDownloadTask? chapterDownloadTask(
  ChapterDownloadTaskRef ref,
  int chapterId,
) {
  final task = ref.watch(
    downloadQueueControllerProvider.select((value) => value[chapterId]),
  );
  return task;
}

extension on ChapterDownloadTask {
  List<DownloadTask> toDownloadTaskBatch(Directory baseDir) {
    return [
      for (final page in pages)
        DownloadTask(
          taskId: '${chapter.id}-${page.number}',
          url: page.imageUrl,
          filename: page.getFilename(),
          directory: chapter.getLocalPath(baseDir),
        ),
    ];
  }
}
