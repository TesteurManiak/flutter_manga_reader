import 'package:flutter_manga_reader/core/extensions/manga_datasource_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/details/controllers/download_queue_controller.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_manga_favorite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_controller.freezed.dart';
part 'details_controller.g.dart';

typedef MangaFetchRecord = ({Manga manga, List<SourceChapter> sourceChapters});

@Riverpod(
  dependencies: [
    watchManga,
    watchManga,
    scopedMangaDatasource,
    localDatasource,
    isMangaFavorite,
    localDatasource,
    localDatasource,
    localDatasource,
    localDatasource,
    DownloadQueueController,
    watchChaptersForManga,
  ],
)
class DetailsController extends _$DetailsController {
  @override
  DetailsState build(int mangaId) {
    ref.listen(watchMangaProvider(mangaId), (prev, next) {
      state = next.when(
        data: (manga) {
          if (manga == null) {
            return const DetailsState.error(error: 'Manga not found');
          }

          return const DetailsState.loaded();
        },
        error: (e, _) => DetailsState.error(error: e.toString()),
        loading: () => const DetailsState.loading(),
      );
    });

    return const DetailsState.loading();
  }

  Future<void> fetchDetails({bool forceRefresh = false}) async {
    final currentManga = await ref.read(watchMangaProvider(mangaId).future);
    if (currentManga == null) {
      state = const DetailsState.error(error: 'Manga not found');
      return;
    }

    if (!forceRefresh && currentManga.initialized) return;

    state = const DetailsState.loading();

    final source = ref.read(scopedMangaDatasourceProvider);
    final result = await source.fetchFullMangaData(currentManga);

    state = await result.when(
      success: (record) async {
        final mangaToSave = record.manga.copyWith(initialized: true);
        await ref.read(localDatasourceProvider).saveMangaData(
          (manga: mangaToSave, sourceChapters: record.sourceChapters),
        );

        return const DetailsState.loaded();
      },
      failure: (e) => DetailsState.error(error: e),
    );
  }

  Future<void> toggleFavorite() {
    final currentFavoriteState = ref.read(isMangaFavoriteProvider(mangaId));
    return ref.read(localDatasourceProvider).setMangaFavorite(
          mangaId: mangaId,
          favorite: !currentFavoriteState,
        );
  }

  Future<void> markSelectedChaptersAsRead() async {
    final selectedChapters = state.selectedChapters;
    if (selectedChapters.isEmpty) return;

    final localDatasource = ref.read(localDatasourceProvider);
    await localDatasource.setChaptersRead(
      chapterIds: selectedChapters.map((e) => e.id).toList(),
      read: true,
    );

    state = state.copyWith(selectedChapters: [], selectionMode: false);
  }

  Future<void> markSelectedChaptersAsUnread() async {
    final selectedChapters = state.selectedChapters;
    if (selectedChapters.isEmpty) return;

    final localDatasource = ref.read(localDatasourceProvider);
    await localDatasource.setChaptersRead(
      chapterIds: selectedChapters.map((e) => e.id).toList(),
      read: false,
    );

    state = state.copyWith(selectedChapters: [], selectionMode: false);
  }

  void deleteSelectedChapters() {
    final selectedChapters = state.selectedChapters;
    if (selectedChapters.isEmpty) return;

    ref
        .read(localDatasourceProvider)
        .deleteChapters(selectedChapters.map((e) => e.id).toList());

    state = state.copyWith(selectedChapters: [], selectionMode: false);
  }

  Future<void> downloadSelectedChapters(Map<String, String>? headers) async {
    final selectedChapters = state.selectedChapters;
    if (selectedChapters.isEmpty) return;

    for (final chapter in selectedChapters) {
      await ref
          .read(downloadQueueControllerProvider.notifier)
          .queueChapterDownload(chapter, headers);
    }

    state = state.copyWith(selectedChapters: [], selectionMode: false);
  }

  void toggleMode() {
    state = state.copyWith(
      selectedChapters: [],
      selectionMode: !state.selectionMode,
    );
  }

  void selectChapter(Chapter chapter) {
    state = state.copyWith(selectionMode: true);

    final selectedChapters = List<Chapter>.from(state.selectedChapters);
    if (selectedChapters.contains(chapter)) {
      selectedChapters.remove(chapter);
    } else {
      selectedChapters.add(chapter);
    }
    state = state.copyWith(selectedChapters: selectedChapters);

    if (state.selectedChapters.isEmpty) {
      state = state.copyWith(selectionMode: false);
    }
  }

  void selectAllChapters() {
    ref.read(watchChaptersForMangaProvider(mangaId)).whenData((chapters) {
      state = state.copyWith(
        selectedChapters: chapters,
        selectionMode: true,
      );
    });
  }

  void quitSelectionMode() {
    state = state.copyWith(selectionMode: false, selectedChapters: []);
  }
}

@Riverpod(dependencies: [DetailsController])
bool scopedSelectionMode(ScopedSelectionModeRef ref, int mangaId) {
  return ref.watch(
    detailsControllerProvider(mangaId).select((s) => s.selectionMode),
  );
}

@freezed
sealed class DetailsState with _$DetailsState {
  const factory DetailsState.loading({
    @Default(<Chapter>[]) List<Chapter> selectedChapters,
    @Default(false) bool selectionMode,
  }) = DetailsLoading;
  const factory DetailsState.loaded({
    @Default(<Chapter>[]) List<Chapter> selectedChapters,
    @Default(false) bool selectionMode,
  }) = DetailsLoaded;
  const factory DetailsState.error({
    @Default(<Chapter>[]) List<Chapter> selectedChapters,
    String? error,
    @Default(false) bool selectionMode,
  }) = DetailsError;

  const DetailsState._();

  bool get isLoaded {
    return switch (this) {
      DetailsLoaded() => true,
      _ => false,
    };
  }

  bool get isLoading {
    return switch (this) {
      DetailsLoading() => true,
      _ => false,
    };
  }
}
