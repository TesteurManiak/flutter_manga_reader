import 'package:flutter_manga_reader/core/mixins/loadable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.freezed.dart';
part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController with Loadable {
  @override
  PaginatedMangaState build(MangaDatasource datasource) {
    return const PaginatedMangaState.loading(page: 0);
  }

  Future<void> fetchNextMangas() async {
    if (!state.hasMore) return;

    final nextPage = state.page + 1;
    final result = await datasource.fetchPopularMangas(nextPage);

    state = result.when(
      success: (page) {
        final currentMangas = state.mangasOrNull ?? [];
        if (currentMangas.isEmpty && page.mangaList.isEmpty) {
          return PaginatedMangaState.empty(page: nextPage);
        }

        final mangas = currentMangas + page.mangaList;

        return PaginatedMangaState.loaded(
          page: nextPage,
          mangas: mangas,
          hasMore: page.hasMore,
        );
      },
      failure: (e) {
        return PaginatedMangaState.error(
          message: e.message,
          page: nextPage,
          hasMore: state.hasMore,
        );
      },
    );
  }

  @override
  Future<void> load() => fetchNextMangas();
}

@freezed
class PaginatedMangaState with _$PaginatedMangaState {
  const factory PaginatedMangaState.loading({
    required int page,
    @Default(true) bool hasMore,
  }) = _Loading;
  const factory PaginatedMangaState.loaded({
    required int page,
    required bool hasMore,
    required List<SourceManga> mangas,
  }) = _Loaded;
  const factory PaginatedMangaState.empty({
    required int page,
    @Default(false) bool hasMore,
  }) = _Empty;
  const factory PaginatedMangaState.error({
    required int page,
    required bool hasMore,
    String? message,
  }) = _Error;

  const PaginatedMangaState._();

  List<SourceManga>? get mangasOrNull {
    return mapOrNull(loaded: (state) => state.mangas);
  }
}
