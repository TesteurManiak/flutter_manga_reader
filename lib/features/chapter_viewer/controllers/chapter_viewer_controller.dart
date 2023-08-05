import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chapter_viewer_controller.freezed.dart';
part 'chapter_viewer_controller.g.dart';

@riverpod
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
      success: (pages) => ChapterViewerState.loaded(pages: pages),
      failure: (e) => ChapterViewerState.error(error: e.message),
    );
  }

  Future<void> markChapterAsRead() async {
    final localDatasource = ref.read(localDatasourceProvider);
    final localChapter = await localDatasource.getChapter(chapterId);

    if (localChapter == null) return;

    return localDatasource.updateChapter(localChapter.copyWith(read: true));
  }
}

@freezed
class ChapterViewerState with _$ChapterViewerState {
  const factory ChapterViewerState.loading() = _Loading;
  const factory ChapterViewerState.loaded({
    required List<ChapterPage> pages,
  }) = _Loaded;
  const factory ChapterViewerState.error({String? error}) = _Error;

  const ChapterViewerState._();
}
