import 'package:mangabox/mangabox.dart';
import 'package:mangabox/src/mangabox.dart';

class MangairoDatasource extends MangaboxDatasource {
  MangairoDatasource({super.client})
      : super(
          name: 'Mangairo',
          baseUrl: MBConsts.mangairoBaseUrl,
          referer: 'https://chap.mangairo.com/',
        );

  @override
  RequestPropsRecord popularUrlPath(int page) {
    return (
      pathSegments: [
        'manga-list',
        'type-topview',
        'ctg-all',
        'state-all',
        'page-$page',
      ],
      queryParameters: null,
    );
  }

  @override
  RequestPropsRecord latestUrlPath(int page) {
    return (
      pathSegments: [
        'manga-list',
        'type-latest',
        'ctg-all',
        'state-all',
        'page-$page',
      ],
      queryParameters: null,
    );
  }
}
