import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_dex_datasource/manga_dex_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.freezed.dart';
part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  SearchState build() {
    return const SearchState.loading();
  }

  Future<void> searchForMangas() async {
    final currentPage = state.maybeMap(
      loaded: (state) => state.page,
      orElse: () => 0,
    );
    final nextPage = currentPage + 1;

    // TODO(Guillaume): use dynamic sources
    final result =
        await ref.read(mangadexDatasourceProvider).fetchPopularMangas(nextPage);

    state = result.when(
      success: (page) {
        final currentMangas = state.mangasOrNull ?? <Manga>[];
        final mangas = currentMangas + page.mangaList;

        if (mangas.isEmpty) return const SearchState.empty();

        return SearchState.loaded(
          page: nextPage,
          mangas: mangas,
        );
      },
      failure: (error) => SearchState.error(message: error.message),
    );
  }
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded({
    @Default(0) int page,
    required List<Manga> mangas,
  }) = _Loaded;
  const factory SearchState.empty() = _Empty;
  const factory SearchState.error({String? message}) = _Error;

  const SearchState._();

  List<Manga>? get mangasOrNull {
    return mapOrNull(loaded: (state) => state.mangas);
  }
}
