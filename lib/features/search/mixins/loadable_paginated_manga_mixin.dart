import 'package:flutter_manga_reader/core/mixins/loadable.dart';
import 'package:flutter_manga_reader/features/search/controllers/search_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

mixin LoadablePaginatedMangaMixin implements Loadable {
  @override
  Future<void> load() => fetchNext();

  Future<void> fetchNext();

  PaginatedMangaState convertToState({
    required Result<MangasPage, HttpError> result,
    required List<SourceManga> currentMangas,
    required int nextPage,
  }) {
    return result.when(
      success: (page) {
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
          hasMore: false,
        );
      },
    );
  }
}
