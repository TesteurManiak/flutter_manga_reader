import 'package:flutter_manga_reader/core/extensions/string_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chapter_viewer_controller.freezed.dart';
part 'chapter_viewer_controller.g.dart';

@Riverpod(
  dependencies: [
    localDatasource,
    fetchChapterPages,
  ],
)
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
      state = ChapterViewerState.error(error: 'Chapter not found'.hardcoded);
      return;
    }

    final result = await ref
        .read(fetchChapterPagesProvider(localChapter.toSourceModel()).future);

    state = result.when(
      success: (pages) {
        return ChapterViewerState.loaded(
          pages: pages,
          chapter: localChapter,
        );
      },
      failure: (e) => ChapterViewerState.error(error: e.message),
    );
  }

  Future<void> markChapterAsRead() {
    final localDatasource = ref.read(localDatasourceProvider);
    return localDatasource.setChapterRead(chapterId: chapterId, read: true);
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
}
