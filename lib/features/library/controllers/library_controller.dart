import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_controller.freezed.dart';
part 'library_controller.g.dart';

@Riverpod(dependencies: [watchMangasInLibrary])
class LibraryController extends _$LibraryController {
  @override
  LibraryState build() {
    ref.listen(watchMangasInLibraryProvider, (_, next) {
      state = next.when(
        data: (mangas) {
          return mangas.isEmpty
              ? const LibraryState.empty()
              : LibraryState.loaded(mangas: mangas);
        },
        error: (e, s) => LibraryState.error(message: e.toString()),
        loading: () => const LibraryState.loading(),
      );
    });

    return const LibraryState.loading();
  }
}

@freezed
sealed class LibraryState with _$LibraryState {
  const factory LibraryState.loading() = LibraryLoading;
  const factory LibraryState.loaded({
    required List<Manga> mangas,
  }) = LibraryLoaded;
  const factory LibraryState.empty() = LibraryEmpty;
  const factory LibraryState.error({required String message}) = LibraryError;

  const LibraryState._();
}
