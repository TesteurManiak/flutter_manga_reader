import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/details/use_cases/get_manga_from_id.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_manga_favorite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_controller.freezed.dart';
part 'details_controller.g.dart';

typedef _MangaFetchRecord = ({Manga manga, List<SourceChapter> sourceChapters});

@Riverpod(keepAlive: true)
class DetailsController extends _$DetailsController {
  @override
  DetailsState build(int mangaId) {
    return const DetailsState.loading();
  }

  Future<void> fetchDetails({bool forceRefresh = false}) async {
    state = DetailsState.loading(manga: state.manga);

    final localManga = await ref.read(getMangaFromIdProvider(mangaId).future);

    if (localManga == null) {
      state = DetailsState.error(
        error: 'Manga not found'.hardcoded,
        manga: state.manga,
      );
      return;
    }

    if (!forceRefresh && localManga.initialized) {
      state = DetailsState.loaded(manga: localManga);
      return;
    }

    state = DetailsState.loading(manga: localManga);

    final result = await _fetchRecord(localManga);

    state = await result.when(
      success: (record) async {
        final mangaToSave = record.manga.copyWith(initialized: true);
        await _saveRecord(
          (manga: mangaToSave, sourceChapters: record.sourceChapters),
        );

        return DetailsState.loaded(manga: mangaToSave);
      },
      failure: (e) => DetailsState.error(error: e, manga: localManga),
    );
  }

  Future<Result<_MangaFetchRecord, String?>> _fetchRecord(
    Manga baseManga,
  ) async {
    final remoteDatasource = ref.read(mangaDatasourceProvider);
    return Future.wait([
      remoteDatasource.fetchMangaDetails(baseManga),
      remoteDatasource.fetchChapters(baseManga.toSourceModel()),
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

    state = state.copyWith(selectedChapters: []);
  }

  void switchMode() {
    state = state.copyWith(selectionMode: !state.selectionMode);
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
}

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading({
    Manga? manga,
    @Default(<Chapter>[]) List<Chapter> selectedChapters,
    @Default(false) bool selectionMode,
  }) = _Loading;
  const factory DetailsState.loaded({
    required Manga manga,
    @Default(<Chapter>[]) List<Chapter> selectedChapters,
    @Default(false) bool selectionMode,
  }) = _Loaded;
  const factory DetailsState.error({
    Manga? manga,
    @Default(<Chapter>[]) List<Chapter> selectedChapters,
    String? error,
    @Default(false) bool selectionMode,
  }) = _Error;

  const DetailsState._();

  bool get isLoaded {
    return maybeMap(
      loaded: (_) => true,
      orElse: () => false,
    );
  }

  bool get isLoading {
    return maybeMap(
      loading: (_) => true,
      orElse: () => false,
    );
  }
}
