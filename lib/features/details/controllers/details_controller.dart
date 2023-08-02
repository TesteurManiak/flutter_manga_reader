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
  DetailsState build(int mangaId) {
    return const DetailsState.loading();
  }

  Future<void> fetchDetails({bool forceRefresh = false}) async {
    state = DetailsState.loading(manga: state.manga);

    final localManga =
        await ref.read(localDatasourceProvider).getManga(mangaId);

    if (localManga == null) {
      state = DetailsState.error(error: 'Manga not found', manga: state.manga);
      return;
    } else if (!forceRefresh && localManga.initialized) {
      state = DetailsState.loaded(manga: localManga);
      return;
    }

    state = DetailsState.loading(manga: localManga);

    final remoteDatasource = ref.read(mangaDatasourceProvider);
    final result = await remoteDatasource.fetchMangaDetails(localManga);

    // TODO(Guillaume): Fetch chapters

    state = await result.when(
      success: (manga) async {
        await ref
            .read(localDatasourceProvider)
            .saveManga(manga.copyWith(initialized: true));
        return DetailsState.loaded(manga: manga);
      },
      failure: (e) => DetailsState.error(error: e.message, manga: localManga),
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

  const DetailsState._();

  bool get isLoaded {
    return maybeWhen(
      loaded: (_) => true,
      orElse: () => false,
    );
  }

  bool get isLoading {
    return maybeWhen(
      loading: (_) => true,
      orElse: () => false,
    );
  }
}
