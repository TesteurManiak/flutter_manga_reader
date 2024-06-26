import 'package:flutter_manga_reader/core/extensions/manga_datasource_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/library/controllers/update_progress_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'library_controller.freezed.dart';
part 'library_controller.g.dart';

@Riverpod(dependencies: [watchMangasInLibrary, localDatasource])
class LibraryController extends _$LibraryController {
  @override
  LibraryState build() {
    ref.listen(watchMangasInLibraryProvider, (_, next) {
      state = next.when(
        data: (mangas) {
          return mangas.isEmpty
              ? const LibraryEmpty()
              : LibraryLoaded(mangas: mangas);
        },
        error: (e, s) => LibraryError(message: e.toString()),
        loading: () => const LibraryLoading(),
      );
    });

    return const LibraryState.loading();
  }

  bool _isRefreshing = false;

  Future<void> refresh() async {
    if (state case LibraryLoaded(:final mangas) when !_isRefreshing) {
      _isRefreshing = true;
      ref.read(updateProgressControllerProvider.notifier).startProgress();
      final records = <MangaFetchRecord>[];
      for (final (i, manga) in mangas.indexed) {
        final source = ref.read(getSourceFromIdProvider(manga.sourceId));
        final result = await source.fetchMangaChapters(manga);

        if (result case Success(success: final chapters)) {
          records.add((manga: manga, sourceChapters: chapters));
        }
        ref.read(updateProgressControllerProvider.notifier).setProgress(i + 1);
      }

      if (records.isEmpty) return;
      await ref.read(localDatasourceProvider).saveMangaChapters(records);
      ref.read(updateProgressControllerProvider.notifier).endProgress();
      _isRefreshing = false;
    }
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
