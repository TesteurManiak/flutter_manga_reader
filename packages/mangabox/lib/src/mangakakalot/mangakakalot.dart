import 'package:mangabox/src/mangabox.dart';

class MangakakalotDatasource extends Mangabox {
  MangakakalotDatasource({super.client})
      : super(
          lang: 'en',
          name: 'MangaKakalot',
          baseUrl: 'https://mangakakalot.com',
        );

  @override
  RequestPropsRecord popularUrlPath(int page) {
    return (
      pathSegments: ['manga_list'],
      queryParameters: {
        'type': 'topview',
        'category': 'all',
        'state': 'all',
        'page': page.toString(),
      },
    );
  }

  @override
  RequestPropsRecord latestUrlPath(int page) {
    return (
      pathSegments: ['manga_list'],
      queryParameters: {
        'type': 'latest',
        'category': 'all',
        'state': 'all',
        'page': page.toString(),
      },
    );
  }
}
