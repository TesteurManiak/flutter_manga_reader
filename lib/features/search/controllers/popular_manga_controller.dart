import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/mixins/loadable_paginated_manga_mixin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final popularMangaControllerProvider = NotifierProvider.autoDispose
    .family<PopularMangaController, PaginatedMangaState, MangaDatasource>(
      PopularMangaController.new,
    );

class PopularMangaController extends Notifier<PaginatedMangaState>
    with LoadablePaginatedMangaMixin, PaginatedMangaConverterMixin {
  PopularMangaController(this.datasource);

  final MangaDatasource datasource;

  @override
  PaginatedMangaState build() => const PaginatedMangaState.loading(page: 0);

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
