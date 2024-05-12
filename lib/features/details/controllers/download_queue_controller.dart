import 'dart:async';
import 'dart:collection';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter_manga_reader/core/extensions/chapter_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/iterable_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/details/models/chapter_download_task.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'download_queue_controller.g.dart';

@Riverpod(keepAlive: true, dependencies: [localDatasource, fetchChapterPages])
class DownloadQueueController extends _$DownloadQueueController {
  final _waiting = ListQueue<ChapterDownloadTask>();
  var _readyForEnqueue = Completer<void>();

  @override
  Map<int, ChapterDownloadTask> build() {
    ref.onDispose(_dispose);
    _readyForEnqueue.complete();
    return {};
  }

  void _dispose() {
    if (!_readyForEnqueue.isCompleted) {
      _readyForEnqueue.complete();
    }
  }

  Future<void> queueChapterDownload(
    Chapter chapter,
    Map<String, String>? headers,
  ) async {
    final result = await ref
        .read(fetchChapterPagesProvider(chapter.toSourceModel()).future);
    if (result case Success(success: final pages) when pages.isNotEmpty) {
      final task = ChapterDownloadTask(
        chapter: chapter,
        pages: pages,
        headers: headers,
      );
      state = {...state, chapter.id: task};
      _waiting.add(task);
      _advanceQueue();
    }
  }

  Future<void> cancelTask(int taskId) async {
    if (state[taskId] case final task?) {
      await FileDownloader().cancelTasksWithIds(task.taskIds);
      final newMap = Map.of(state)..remove(taskId);
      state = newMap;
    }
  }

  void _advanceQueue() {
    if (_readyForEnqueue.isCompleted) {
      final task = _waiting.removeFirstOrNull();
      if (task == null) return;

      _readyForEnqueue = Completer<void>();

      // Start enqueueing the next task
      FileDownloader().downloadBatch(
        task.toDownloadTaskBatch(),
        batchProgressCallback: (success, failed) {
          if (failed > 0) {
            _onDownloadTaskError(task.chapter.id);
            return;
          }

          final progress = (success + failed) / task.pages.length;
          _updateProgress(task.chapter.id, progress);
        },
      );
      _readyForEnqueue.future.then((_) => _advanceQueue());
    }
  }

  Future<void> _updateProgress(int chapterId, double progress) async {
    if (state[chapterId] case final task?) {
      final newStatus = switch (progress) {
        1 => DownloadTaskStatus.completed,
        _ => DownloadTaskStatus.downloading,
      };

      final newTask = task.copyWith(progress: progress, status: newStatus);

      if (newStatus == DownloadTaskStatus.completed) {
        await ref.read(localDatasourceProvider).setChaptersDownloaded(
          chapterIds: [task.chapter.id],
          downloaded: true,
        );
        final newMap = Map.of(state)..remove(chapterId);
        state = newMap;
        _readyForEnqueue.complete();
        return;
      }

      // Update progress
      state = {...state, chapterId: newTask};
    }
  }

  Future<void> _onDownloadTaskError(int chapterId) async {
    if (state[chapterId] case final task?
        when task.status != DownloadTaskStatus.failed) {
      final newTask = task.copyWith(status: DownloadTaskStatus.failed);
      await FileDownloader().cancelTasksWithIds(task.taskIds);
      state = {...state, chapterId: newTask};
      _readyForEnqueue.complete();
    }
  }
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
  List<DownloadTask> toDownloadTaskBatch() {
    return [
      for (final page in pages)
        if (page.imageUrl.isNotEmpty)
          DownloadTask(
            taskId: page.imageUrl,
            url: page.imageUrl,
            filename: page.getFilename(),
            directory: chapter.localPath,
            headers: headers ?? {},
          ),
    ];
  }
}
