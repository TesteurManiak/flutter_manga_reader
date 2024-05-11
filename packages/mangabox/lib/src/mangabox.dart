import 'package:html/parser.dart' show parse;
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
    final result = await client
        .send(
          method: HttpMethod.get,
          pathSegments: pathSegments,
          queryParameters: queryParameters,
        )
        .decodeString(parse)
        .decodeHtmlBody();

    return result.when(
      success: (body) => Result.success(parseResult(body)),
      failure: Result.failure,
    );
  }

  @override
  Future<Result<MangasPage, HttpError>> fetchLatestUpdatedMangas(
    int page,
  ) async {
    final (:pathSegments, :queryParameters) = latestUrlPath(page);
    final result = await client
        .send(
          method: HttpMethod.get,
          pathSegments: pathSegments,
          queryParameters: queryParameters,
        )
        .decodeString(parse)
        .decodeHtmlBody();

    return result.when(
      success: (body) => Result.success(parseResult(body)),
      failure: Result.failure,
    );
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

  MangasPage parseResult(String result) {
    final mangaList = <SourceManga>[];
    List<String> urls = xpath(
      result,
      '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item"]/h3/a/@href',
    );
    List<String> names = xpath(
      result,
      '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item"]/h3/a/text()',
    );
    final images = xpath(
      result,
      '//*[ @class="content-genres-item"  or @class="list-story-item" or @class="story-item" or @class="list-truyen-item-wrap"]/a/img/@src',
    );

    if (names.isEmpty) {
      names = xpath(result, '//*[@class="list-story-item"]/a/@title');
      urls = xpath(result, '//*[@class="list-story-item"]/a/@href');
    }

    for (int i = 0; i < names.length; i++) {
      final manga = SourceManga(
        title: names[i],
        url: urls[i],
        source: name,
        thumbnailUrl: images[i],
        lang: lang,
      );
      mangaList.add(manga);
    }

    return MangasPage(mangaList: mangaList, hasMore: true);
  }

  RequestPropsRecord popularUrlPath(int page);
  RequestPropsRecord latestUrlPath(int page);
}
