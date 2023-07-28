import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_controller.freezed.dart';
part 'details_controller.g.dart';

@riverpod
class DetailsController extends _$DetailsController {
  @override
  DetailsState build(String mangaId) {
    return const DetailsState.loading();
  }

  Future<void> fetchDetails() async {
    final currentManga = state.manga;
    if (currentManga != null && currentManga.initialized) return;

    state = DetailsState.loading(manga: currentManga);

    final localManga = await ref.read(getMangaProvider(mangaId).future);
    if (localManga == null) {
      state = DetailsState.error(error: 'Manga not found', manga: currentManga);
      return;
    } else if (localManga.initialized) {
      state = DetailsState.loaded(manga: localManga);
      return;
    }

    final datasource = ref.read(mangaDatasourceProvider);
    final result = await datasource.fetchMangaDetails(localManga);

    state = await result.when(
      success: (manga) async {
        await ref.read(localDatasourceProvider).updateManga(manga);
        return DetailsState.loaded(manga: manga);
      },
      failure: (error) {
        return DetailsState.error(error: error.message, manga: currentManga);
      },
    );
  }

  Future<void> toggleFavorite() async {
    final currentManga = state.manga;
    if (currentManga == null) return;

    final newManga = currentManga.copyWith(favorite: !currentManga.favorite);
    await ref.read(localDatasourceProvider).updateManga(newManga);
    state = DetailsState.loaded(manga: newManga);
  }
}

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading({Manga? manga}) = _Loading;
  const factory DetailsState.loaded({
    required Manga manga,
  }) = _Loaded;
  const factory DetailsState.error({
    Manga? manga,
    String? error,
  }) = _Error;
}
