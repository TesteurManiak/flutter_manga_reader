import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangakakalot/src/consts.dart';

class MangakakalotDatasource extends MangaDatasource {
  MangakakalotDatasource({
    required super.lang,
  }) : super(
          name: MKConsts.sourceName,
          baseUrl: MKConsts.baseUrl,
        );

  @override
  Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
    SourceChapter chapter,
  ) {
    // TODO: implement fetchChapterPages
    throw UnimplementedError();
  }

  @override
  Future<Result<List<SourceChapter>, HttpError>> fetchChapters(
    SourceManga sourceManga,
  ) {
    // TODO: implement fetchChapters
    throw UnimplementedError();
  }

  @override
  Future<Result<MangasPage, HttpError>> fetchLatestUpdatedMangas(int page) {
    // TODO: implement fetchLatestUpdatedMangas
    throw UnimplementedError();
  }

  @override
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga) {
    // TODO: implement fetchMangaDetails
    throw UnimplementedError();
  }

  @override
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page) {
    // TODO: implement fetchPopularMangas
    throw UnimplementedError();
  }

  @override
  String getMangaUrl(SourceManga sourceManga) {
    // TODO: implement getMangaUrl
    throw UnimplementedError();
  }

  @override
  Future<Result<MangasPage, HttpError>> searchMangaList(
    int page,
    String query,
  ) {
    // TODO: implement searchMangaList
    throw UnimplementedError();
  }
}
