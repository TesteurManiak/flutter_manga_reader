import 'package:html/dom.dart' as dom;
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangabox/src/mangabox_helper.dart';
import 'package:path/path.dart' as path;

typedef RequestPropsRecord = ({
  List<String> pathSegments,
  Map<String, String>? queryParameters,
});

abstract class MangaboxDatasource extends MangaDatasource with HttpSource {
  MangaboxDatasource({
    required super.name,
    required super.baseUrl,
    required this.referer,
    RestClient? client,
    this.helper = const MangaboxHelper(),
  })  : client = client ?? RestClient(baseUri: Uri.parse(baseUrl)),
        super(lang: 'en');

  final String referer;
  final RestClient client;
  final MangaboxHelper helper;

  @override
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page) async {
    final (:pathSegments, :queryParameters) = popularUrlPath(page);
    final result = await client
        .send(
          method: HttpMethod.get,
          pathSegments: pathSegments,
          queryParameters: queryParameters,
          headers: getHeaders(),
        )
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
          headers: getHeaders(),
        )
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
  ) async {
    String url;
    if (simpleQueryPath(page, query) case final queryPath?
        when query.isNotEmpty) {
      url = path.join(baseUrl, queryPath);
    } else {
      url = baseUrl;
      if (advancedSearchQuery(page, query) case final advancedQueryPath?) {
        url = path.join(url, advancedQueryPath);
        // TODO(Guillaume): support more advanced filtering options
      }
    }

    final result = await client
        .send(method: HttpMethod.get, baseUrl: url)
        .decodeHtmlBody();

    return result.when(
      success: (body) {
        final mangaList = <SourceManga>[];
        List<String> urls = body.xpath(
          '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item" or @class="story_item_right"]/h3/a/@href',
        );
        List<String> names = body.xpath(
          '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item" or @class="story_item_right"]/h3/a/text()',
        );
        final images = body.xpath(
          '//*[@class="search-story-item" or @class="story_item" or @class="content-genres-item"  or @class="list-story-item" or @class="story-item" or @class="list-truyen-item-wrap"]/a/img/@src',
        );

        if (names.isEmpty) {
          urls = body.xpath(
            '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item"]/h2/a/@href',
          );
          names = body.xpath(
            '//*[ @class^="genres-item"  or @class="list-truyen-item-wrap" or @class="story-item"]/h2/a/text()',
          );
        }

        if (names.isEmpty) {
          urls = body.xpath(
            '//*[@class="search-story-item" or @class="list-story-item"]/a/@href',
          );
          names = body.xpath(
            '//*[@class="search-story-item" or @class="list-story-item"]/a/@title',
          );
        }

        for (int i = 0; i < names.length; i++) {
          final manga = SourceManga(
            title: names[i],
            url: urls[i],
            sourceId: id,
            thumbnailUrl: images[i],
          );
          mangaList.add(manga);
        }

        return Result.success(MangasPage(mangaList: mangaList, hasMore: true));
      },
      failure: Result.failure,
    );
  }

  @override
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga) async {
    final result = await client
        .send(method: HttpMethod.get, baseUrl: manga.url, headers: getHeaders())
        .decodeHtmlBody();

    return result.when(
      success: (body) {
        final author = body
            .xpathFirst(
              '//*[@class="table-label" and contains(text(), "Author")]/parent::tr/td[2]/text()|//li[contains(text(), "Author")]/a/text()',
            )
            ?.trim();
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
        final status = helper.parseStatus(statusStr?.split(':').last.trim());

        final genres = body.xpath(
          '//*[@class="table-label" and contains(text(), "Genres")]/parent::tr/td[2]/a/text() | //li[contains(text(), "Genres")]/a/text()',
        );

        return Result.success(
          manga.copyWith(
            author: author,
            description: description,
            status: status,
            genres: genres.isNotEmpty ? genres : null,
          ),
        );
      },
      failure: Result.failure,
    );
  }

  @override
  Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
    SourceChapter chapter,
  ) async {
    final result = await client
        .send(
          method: HttpMethod.get,
          baseUrl: chapter.url,
          headers: getHeaders(),
        )
        .decodeHtmlBody();

    return result.when(
      success: (body) {
        final pages = <ChapterPage>[];

        final urls = body.xpath(
          '//div[@class="container-chapter-reader" or @class="panel-read-story"]/img/@src',
        );

        for (final (i, url) in urls.indexed) {
          if (url.startsWith('https://convert_image_digi.mgicdn.com')) {
            final realUrl =
                "https://images.weserv.nl/?url=${url.substringAfter("//")}";
            pages.add(ChapterPage(index: i + 1, imageUrl: realUrl));
          } else {
            pages.add(ChapterPage(index: i + 1, imageUrl: url));
          }
        }

        return Result.success(pages);
      },
      failure: Result.failure,
    );
  }

  @override
  Future<Result<List<SourceChapter>, HttpError>> fetchChapters(
    SourceManga sourceManga,
  ) async {
    final result = await client
        .send(
          method: HttpMethod.get,
          baseUrl: sourceManga.url,
          headers: getHeaders(),
        )
        .decodeHtmlBody();

    return result.when(
      success: (body) {
        final chaptersList = <SourceChapter>[];
        final chaptersElements = body.select(
          "div.chapter-list div.row, ul.row-content-chapter li, div#chapter_list li",
        );

        if (chaptersElements != null) {
          for (final e in chaptersElements) {
            final a = e.selectFirst('a');
            final name = a?.text ?? '';
            final dates = e.select('span');
            final dateStr = switch (dates) {
              [..., final last] => last.attributes['title'],
              _ => e.selectFirst('ul > li > p')?.attributes['title'],
            };

            // Parse chapter number from chapter name
            final regex = RegExp(r'Chapter\s*([\d.]+)', caseSensitive: false);
            final chapter = regex.firstMatch(name)?.group(1);
            final chapterNumber =
                chapter != null ? double.tryParse(chapter) ?? -1 : -1.0;

            chaptersList.add(
              SourceChapter(
                url: a?.getHref ?? '',
                name: name,
                dateUpload: helper.parseDate(dateStr),
                chapterNumber: chapterNumber,
              ),
            );
          }
        }

        return Result.success(chaptersList);
      },
      failure: Result.failure,
    );
  }

  @override
  String getMangaUrl(SourceManga sourceManga) {
    // TODO(Guillaume): implement getMangaUrl
    throw UnimplementedError();
  }

  String normalizeSearchQuery(String query) {
    return query
        .toLowerCase()
        .replaceAll(RegExp('[àáạảãâầấậẩẫăằắặẳẵ]'), 'a')
        .replaceAll(RegExp('[èéẹẻẽêềếệểễ]'), 'e')
        .replaceAll(RegExp('[ìíịỉĩ]'), 'i')
        .replaceAll(RegExp('[òóọỏõôồốộổỗơờớợởỡ]'), 'o')
        .replaceAll(RegExp('[ùúụủũưừứựửữ]'), 'u')
        .replaceAll(RegExp('[ỳýỵỷỹ]'), 'y')
        .replaceAll(RegExp('đ'), 'd')
        .replaceAll(
          RegExp(
            r"""!|@|%|\^|\*|\(|\)|\+|=|<|>|\?|/|,|\.|:|;|'| |"|&|#|\[|]|~|-|$|_""",
          ),
          '_',
        )
        .replaceAll(RegExp('_+'), '_')
        .replaceAll(RegExp(r'^_+|_+$'), '');
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
        sourceId: id,
        thumbnailUrl: images[i],
      );
      mangaList.add(manga);
    }

    return MangasPage(mangaList: mangaList, hasMore: true);
  }

  @override
  Map<String, String> getHeaders() => {'Referer': referer};

  RequestPropsRecord popularUrlPath(int page);
  RequestPropsRecord latestUrlPath(int page);
  String? simpleQueryPath(int page, String query) => null;
  String? advancedSearchQuery(int page, String query) => null;
}

extension on String {
  String substringAfter(String delimiter) {
    final index = indexOf(delimiter);
    return index == -1 ? this : substring(index + delimiter.length);
  }
}
