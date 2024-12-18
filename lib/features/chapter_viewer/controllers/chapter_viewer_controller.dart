import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chapter_viewer_controller.freezed.dart';
part 'chapter_viewer_controller.g.dart';

@Riverpod(dependencies: [localDatasource, fetchChapterPages])
class ChapterViewerController extends _$ChapterViewerController {
  @override
  ChapterViewerState build(int chapterId) {
    return const ChapterViewerState.loading();
  }

  Future<void> fetchPages() async {
    state = const ChapterViewerState.loading();

    final localChapter =
        await ref.read(localDatasourceProvider).getChapter(chapterId);
    if (localChapter == null) {
      state = const ChapterViewerState.error(error: 'Chapter not found');
      return;
    }

    final result = await ref
        .read(fetchChapterPagesProvider(localChapter.toSourceModel()).future);

    state = switch (result) {
      Success(success: final pages) => ChapterViewerState.loaded(
          pages: pages,
          chapter: localChapter,
        ),
      Failure(failure: final e) => ChapterViewerState.error(error: e.message),
    };
  }

  Future<void> markChapterAsRead() {
    final localDatasource = ref.read(localDatasourceProvider);
    return localDatasource.setChaptersRead(chapterIds: [chapterId], read: true);
  }

  Future<void> setLastPageRead(int page) {
    final localDatasource = ref.read(localDatasourceProvider);
    return localDatasource.setChapterLastPageRead(
      chapterId: chapterId,
      lastPageRead: page,
    );
  }
}

@freezed
sealed class ChapterViewerState with _$ChapterViewerState {
  const factory ChapterViewerState.loading() = ChapterViewerLoading;
  const factory ChapterViewerState.loaded({
    required Chapter chapter,
    required List<ChapterPage> pages,
  }) = ChapterViewerLoaded;
  const factory ChapterViewerState.error({String? error}) = ChapterViewerError;

  const ChapterViewerState._();

  int? get pageLengthOrNull {
    return switch (this) {
      ChapterViewerLoaded(:final pages) => pages.length,
      _ => null,
    };
  }
}
