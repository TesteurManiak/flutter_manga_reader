import 'package:mangabox/mangabox.dart';
import 'package:mangabox/src/mangabox_datasource.dart';

class MangakakalotDatasource extends MangaboxDatasource {
  MangakakalotDatasource({super.client})
      : super(
          lang: 'en',
          name: MBConsts.mangakakalotSourceName,
          baseUrl: MBConsts.mangakakalotBaseUrl,
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

  @override
  Map<String, String>? getHeaders() {
    return {
      'Referer': 'https://chapmanganato.to/',
    };
  }
}
