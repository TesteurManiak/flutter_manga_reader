import 'package:flutter_manga_reader/core/models/manga.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_dex_datasource/manga_dex_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    state = const SearchState.loading();

    // TODO(Guillaume): use dynamic sources
    final result = await ref.read(mangaDexDatasourceProvider).fetchMangas();

    state = result.when(
      success: (mangas) {
        if (mangas.isEmpty) return const SearchState.empty();
        return SearchState.loaded(mangas: mangas);
      },
      failure: (error) => SearchState.error(message: error.message),
    );
  }
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded({
    required List<Manga> mangas,
  }) = _Loaded;
  const factory SearchState.empty() = _Empty;
  const factory SearchState.error({String? message}) = _Error;

  const SearchState._();
}
