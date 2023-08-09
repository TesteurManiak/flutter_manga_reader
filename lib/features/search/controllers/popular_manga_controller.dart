import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/mixins/loadable_paginated_manga_mixin.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'popular_manga_controller.g.dart';

@riverpod
class PopularMangaController extends _$PopularMangaController
    with LoadablePaginatedMangaMixin, PaginatedMangaConverterMixin {
  @override
  PaginatedMangaState build(MangaDatasource datasource) {
    return const PaginatedMangaState.loading(page: 0);
  }

  @override
  Future<void> fetchNext() async {
    if (!state.hasMore) return;

    final nextPage = state.page + 1;
    final result = await datasource.fetchPopularMangas(nextPage);

    state = convertToState(
      result: result,
      currentMangas: state.mangasOrEmpty,
      nextPage: nextPage,
    );
  }
}
