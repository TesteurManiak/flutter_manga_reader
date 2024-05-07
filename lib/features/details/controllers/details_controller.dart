import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_manga_favorite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_controller.freezed.dart';
part 'details_controller.g.dart';

typedef _MangaFetchRecord = ({Manga manga, List<SourceChapter> sourceChapters});

@Riverpod(
  dependencies: [
    watchManga,
    watchManga,
    localDatasource,
    isMangaFavorite,
    localDatasource,
    localDatasource,
    localDatasource,
    watchChaptersForManga,
    fetchChapterPages,
  ],
)
class DetailsController extends _$DetailsController {
  @override
  DetailsState build(int mangaId, MangaDatasource source) {
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

    final result = await _fetchRecord(currentManga);

    state = await result.when(
      success: (record) async {
        final mangaToSave = record.manga.copyWith(initialized: true);
        await _saveRecord(
          (manga: mangaToSave, sourceChapters: record.sourceChapters),
        );

        return const DetailsState.loaded();
      },
      failure: (e) => DetailsState.error(error: e),
    );
  }

  Future<Result<_MangaFetchRecord, String?>> _fetchRecord(
    Manga baseManga,
  ) async {
    return Future.wait<Result<Object, HttpError>>([
      source.fetchMangaDetails(baseManga),
      source.fetchChapters(baseManga.toSourceModel()),
    ]).then((value) {
      final detailsResult = value[0];
      final chaptersResult = value[1];

      if (detailsResult is! Result<Manga, HttpError>) {
        return const Result.failure('Invalid details result');
      } else if (chaptersResult is! Result<List<SourceChapter>, HttpError>) {
        return const Result.failure('Invalid chapters result');
      }

      return detailsResult.when(
        success: (manga) {
          return chaptersResult.when(
            success: (chapters) {
              return Result.success((manga: manga, sourceChapters: chapters));
            },
            failure: (e) => Result.failure(e.message),
          );
        },
        failure: (e) => Result.failure(e.message),
      );
    });
  }

  Future<void> _saveRecord(_MangaFetchRecord record) {
    final localDatasource = ref.read(localDatasourceProvider);
    return Future.wait([
      localDatasource.saveManga(record.manga),
      localDatasource.saveSourceChapters(
        record.sourceChapters,
        record.manga.id,
      ),
    ]);
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

typedef DownloadProgressCallback = void Function(double progress);

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
