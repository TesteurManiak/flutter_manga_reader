import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_controller.freezed.dart';
part 'details_controller.g.dart';

typedef _MangaFetchRecord = ({Manga manga, List<SourceChapter> sourceChapters});

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

    final result = await _fetchRecord(localManga);

    state = await result.when(
      success: (record) async {
        await _saveRecord(record);
        return DetailsState.loaded(manga: record.manga);
      },
      failure: (e) => DetailsState.error(error: e, manga: localManga),
    );
  }

  Future<Result<_MangaFetchRecord, String?>> _fetchRecord(
    Manga baseManga,
  ) async {
    final remoteDatasource = ref.read(mangaDatasourceProvider);
    return Future.wait([
      remoteDatasource.fetchMangaDetails(baseManga),
      remoteDatasource.fetchChapters(baseManga.toSourceModel()),
    ]).then((value) {
      final detailsResult = value[0];
      final chaptersResult = value[1];

      if (detailsResult is! Result<Manga, HttpError>) {
        return const Result.failure('Invalid details result');
      } else if (chaptersResult is! Result<List<SourceChapter>, HttpError>) {
        return const Result.failure('Invalid chapters result');
      }

      return detailsResult.when(
        success: (manga) {
          return chaptersResult.when(
            success: (chapters) {
              return Result.success((manga: manga, sourceChapters: chapters));
            },
            failure: (e) => Result.failure(e.message),
          );
        },
        failure: (e) => Result.failure(e.message),
      );
    });
  }

  Future<void> _saveRecord(_MangaFetchRecord record) {
    final localDatasource = ref.read(localDatasourceProvider);
    return Future.wait([
      localDatasource.saveManga(record.manga),
      localDatasource.saveSourceChapters(
        record.sourceChapters,
        record.manga.id,
      ),
    ]);
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
