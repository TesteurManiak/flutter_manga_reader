import 'package:mangabox/mangabox.dart';
import 'package:mangabox/src/mangabox.dart';

class MangabatDatasource extends MangaboxDatasource {
  MangabatDatasource({super.client})
      : super(
          name: 'Mangabat',
          referer: 'https://readmangabat.com/',
          baseUrl: MBConsts.mangabatBaseUrl,
        );

  @override
  RequestPropsRecord popularUrlPath(int page) {
    return (
      pathSegments: ['manga-list-all', '$page'],
      queryParameters: {
        'type': 'topview',
      },
    );
  }

  @override
  RequestPropsRecord latestUrlPath(int page) {
    return (
      pathSegments: ['manga-list-all', '$page'],
      queryParameters: null,
    );
  }
}
