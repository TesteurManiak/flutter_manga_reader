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
    final datasource = ref.read(mangaDatasourceProvider);
    if (!state.isLoaded) {
      final result = await datasource.fetchMangaInfo(mangaId);

      state = result.maybeWhen(
        success: (manga) => DetailsState.loaded(manga: manga),
        orElse: () => state,
      );
    }

    await state.whenOrNull(
      loaded: (manga) async {
        if (manga.initialized) return;

        final result = await datasource.fetchMangaDetails(manga);
        state = result.when(
          success: (manga) => DetailsState.loaded(manga: manga),
          failure: (error) => DetailsState.error(error: error.message),
        );
      },
    );
  }
}

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.loaded({
    required Manga manga,
  }) = _Loaded;
  const factory DetailsState.error({String? error}) = _Error;

  const DetailsState._();

  bool get isLoaded {
    return maybeWhen(
      orElse: () => false,
      loaded: (_) => true,
    );
  }
}
