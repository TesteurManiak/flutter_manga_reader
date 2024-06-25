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

      return detailsResult.when(
        success: (manga) {
          return chaptersResult.when(
            success: (chapters) {
              return Success((manga: manga, sourceChapters: chapters));
            },
            failure: (e) => Failure(e.message),
          );
        },
        failure: (e) => Failure(e.message),
      );
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<Result<List<SourceChapter>, String?>> fetchMangaChapters(
    Manga baseManga,
  ) async {
    try {
      final chaptersResult = await fetchChapters(baseManga.toSourceManga());
      return chaptersResult.when(
        success: Success.new,
        failure: (e) => Failure(e.message),
      );
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
