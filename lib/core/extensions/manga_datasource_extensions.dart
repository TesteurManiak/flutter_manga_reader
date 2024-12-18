import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

extension MangaDatasourceExtensions on MangaDatasource {
  Future<Result<MangaFetchRecord, String?>> fetchFullMangaData(
    Manga baseManga,
  ) async {
    try {
      final (detailsResult, chaptersResult) = await (
        fetchMangaDetails(baseManga),
        fetchChapters(baseManga.toSourceManga()),
      ).wait;

      return switch (detailsResult) {
        Success(success: final manga) => switch (chaptersResult) {
            Success(success: final chapters) => Success(
                (manga: manga, sourceChapters: chapters),
              ),
            Failure(:final failure) => Failure(failure.message),
          },
        Failure(:final failure) => Failure(failure.message),
      };
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<Result<List<SourceChapter>, String?>> fetchMangaChapters(
    Manga baseManga,
  ) async {
    try {
      final chaptersResult = await fetchChapters(baseManga.toSourceManga());
      return switch (chaptersResult) {
        Success(:final success) => Success(success),
        Failure(:final failure) => Failure(failure.message),
      };
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
