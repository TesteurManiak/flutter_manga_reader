import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/mixins/loadable_paginated_manga_mixin.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filtered_manga_controller.g.dart';

@riverpod
class FilteredMangaController extends _$FilteredMangaController
    with PaginatedMangaConverterMixin {
  String _query = '';

  @override
  PaginatedMangaState build(MangaDatasource datasource) {
    // return const PaginatedMangaState.empty(page: 0, hasMore: true);
    return const PaginatedMangaState.loading(page: 0);
  }

  Future<void> startSearch(String query) async {
    if (query.isEmpty) return;

    state = const PaginatedMangaState.loading(page: 0);
    _query = query;

    await fetchNext();
  }

  Future<void> fetchNext() async {
    if (_query.isEmpty || !state.hasMore) return;

    final nextPage = state.page + 1;
    final result = await datasource.searchMangaList(nextPage, _query);

    state = convertToState(
      result: result,
      currentMangas: state.mangasOrEmpty,
      nextPage: nextPage,
    );
  }
}
