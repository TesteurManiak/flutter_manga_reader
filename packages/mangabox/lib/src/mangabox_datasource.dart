import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' show parse;
import 'package:manga_reader_core/manga_reader_core.dart';

typedef RequestPropsRecord = ({
  List<String> pathSegments,
  Map<String, String> queryParameters,
});

abstract class MangaboxDatasource extends MangaDatasource {
  MangaboxDatasource({
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
      success: (body) => Result.success(_parseBody(body)),
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
      success: (body) => Result.success(_parseBody(body)),
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
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga) async {
    final result = await client
        .send(method: HttpMethod.get, baseUrl: manga.url)
        .decodeString(parse)
        .decodeHtmlBody();

    return result.when(
      success: (body) {
        final author = body.xpathFirst(
          '//*[@class="table-label" and contains(text(), "Author")]/parent::tr/td[2]/text()|//li[contains(text(), "Author")]/a/text()',
        );
        final alternative = body.xpathFirst(
          '//*[@class="table-label" and contains(text(), "Alternative")]/parent::tr/td[2]/text()',
        );
        String? description = body.xpathFirst(
          '//*[@id="panel-story-info-description" ]/text() | //*[@id="story_discription" ]/text() | //div[@id="noidungm"]/text()',
        );

        if (description case final desc? when desc.isNotEmpty) {
          String cleanedDesc = desc
              .split(RegExp('summary:', caseSensitive: false))
              .last
              .replaceAll('\n', ' ')
              .replaceAll('Description :', '')
              .trim();
          if (alternative case final alt? when alt.isNotEmpty) {
            cleanedDesc += '\n\nAlternative Name: $alt';
          }
          description = cleanedDesc;
        }

        final statusStr = body.xpathFirst(
          '//*[@class="table-label" and contains(text(), "Status")]/parent::tr/td[2]/text() | //li[contains(text(), "Status")]/text() | //li[contains(text(), "Status")]/a/text()',
        );
        final status = _parseStatus(statusStr?.split(':').last.trim());

        final genres = body.xpath(
          '//*[@class="table-label" and contains(text(), "Genres")]/parent::tr/td[2]/a/text() | //li[contains(text(), "Genres")]/a/text()',
        );

        return Result.success(
          manga.copyWith(
            author: author,
            description: description,
            status: status,
            genre: genres.isNotEmpty ? genres.join(', ') : null,
          ),
        );
      },
      failure: Result.failure,
    );
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
  ) async {
    final result = await client
        .send(method: HttpMethod.get, baseUrl: sourceManga.url)
        .decodeString(parse)
        .decodeHtmlBody();

    return result.when(
      success: (body) {
        // TODO(Guillaume): parse chapters
        return const Result.success([]);
      },
      failure: Result.failure,
    );
  }

  @override
  String getMangaUrl(SourceManga sourceManga) {
    // TODO(Guillaume): implement getMangaUrl
    throw UnimplementedError();
  }

  MangasPage _parseBody(dom.Element body) {
    final mangaList = <SourceManga>[];
    List<String> urls = body.xpath(
      '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item"]/h3/a/@href',
    );
    List<String> names = body.xpath(
      '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item"]/h3/a/text()',
    );
    final images = body.xpath(
      '//*[ @class="content-genres-item"  or @class="list-story-item" or @class="story-item" or @class="list-truyen-item-wrap"]/a/img/@src',
    );

    if (names.isEmpty) {
      names = body.xpath('//*[@class="list-story-item"]/a/@title');
      urls = body.xpath('//*[@class="list-story-item"]/a/@href');
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

  MangaStatus _parseStatus(String? statusStr) {
    if (statusStr == null) return MangaStatus.unknown;
    if (statusStr.contains(RegExp('Ongoing', caseSensitive: false))) {
      return MangaStatus.ongoing;
    } else if (statusStr.contains(RegExp('Completed', caseSensitive: false))) {
      return MangaStatus.completed;
    }

    return MangaStatus.unknown;
  }

  RequestPropsRecord popularUrlPath(int page);
  RequestPropsRecord latestUrlPath(int page);
}
