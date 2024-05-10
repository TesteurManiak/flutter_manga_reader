import 'package:manga_reader_core/manga_reader_core.dart';

typedef RequestPropsRecord = ({
  List<String> pathSegments,
  Map<String, String> queryParameters,
});

abstract class Mangabox extends MangaDatasource {
  Mangabox({
    required super.lang,
    required super.name,
    required super.baseUrl,
    RestClient? client,
  }) : client = client ?? RestClient(baseUri: Uri.parse(baseUrl));

  final RestClient client;

  @override
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page) async {
    final (:pathSegments, :queryParameters) = popularUrlPath(page);
    final result = await client.send(
      method: HttpMethod.get,
      pathSegments: pathSegments,
      queryParameters: queryParameters,
    );

    return result.when(
      success: (data) {
        // TODO(Guillaume): parse the response to extract the body
        print(data);

        throw UnimplementedError();
      },
      failure: Result.failure,
    );
  }

  @override
  Future<Result<MangasPage, HttpError>> fetchLatestUpdatedMangas(int page) {
    // TODO(Guillaume): implement fetchLatestUpdatedMangas
    throw UnimplementedError();
  }

  @override
  Future<Result<MangasPage, HttpError>> searchMangaList(
    int page,
    String query,
  ) {
    // TODO(Guillaume): implement searchMangaList
    throw UnimplementedError();
  }

  @override
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga) {
    // TODO(Guillaume): implement fetchMangaDetails
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
    SourceChapter chapter,
  ) {
    // TODO(Guillaume): implement fetchChapterPages
    throw UnimplementedError();
  }

  @override
  Future<Result<List<SourceChapter>, HttpError>> fetchChapters(
    SourceManga sourceManga,
  ) {
    // TODO(Guillaume): implement fetchChapters
    throw UnimplementedError();
  }

  @override
  String getMangaUrl(SourceManga sourceManga) {
    // TODO(Guillaume): implement getMangaUrl
    throw UnimplementedError();
  }

  MangasPage parseResult() {
    final mangaList = <SourceManga>[];

    // TODO(Guillaume): implement parsing logic

    return MangasPage(mangaList: mangaList, hasMore: false);
  }

  RequestPropsRecord popularUrlPath(int page);
  RequestPropsRecord latestUrlPath(int page);
}
