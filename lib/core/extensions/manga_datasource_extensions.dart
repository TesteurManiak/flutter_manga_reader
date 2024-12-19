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

      return (detailsResult, chaptersResult)
          .combine((m, c) => (manga: m, sourceChapters: c))
          .onFailure((f) => f.message);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<Result<List<SourceChapter>, String?>> fetchMangaChapters(
    Manga baseManga,
  ) async {
    try {
      final chaptersResult = await fetchChapters(baseManga.toSourceManga());
      return chaptersResult.onFailure((f) => f.message);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
