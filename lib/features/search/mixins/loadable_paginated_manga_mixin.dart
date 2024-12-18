import 'package:flutter_manga_reader/core/mixins/loadable.dart';
import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

mixin PaginatedMangaConverterMixin {
  PaginatedMangaState convertToState({
    required Result<MangasPage, HttpError> result,
    required List<SourceManga> currentMangas,
    required int nextPage,
  }) {
    return switch (result) {
      Success(success: final page) => () {
          if (currentMangas.isEmpty && page.mangaList.isEmpty) {
            return PaginatedMangaState.empty(page: nextPage);
          }

          final mangas = currentMangas + page.mangaList;

          return PaginatedMangaState.loaded(
            page: nextPage,
            mangas: mangas,
            hasMore: page.hasMore,
          );
        }(),
      Failure(failure: final e) => PaginatedMangaState.error(
          message: e.message,
          page: nextPage,
          hasMore: false,
        ),
    };
  }
}

mixin LoadablePaginatedMangaMixin implements Loadable {
  @override
  Future<void> load() => fetchNext();

  Future<void> fetchNext();
}
