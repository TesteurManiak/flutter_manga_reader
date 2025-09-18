import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/mixins/loadable_paginated_manga_mixin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final filteredMangaControllerProvider = NotifierProvider.autoDispose
    .family<FilteredMangaController, PaginatedMangaState, MangaDatasource>(
      FilteredMangaController.new,
    );

class FilteredMangaController extends Notifier<PaginatedMangaState>
    with PaginatedMangaConverterMixin {
  FilteredMangaController(this.datasource);

  final MangaDatasource datasource;

  String _query = '';

  @override
  PaginatedMangaState build() {
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
