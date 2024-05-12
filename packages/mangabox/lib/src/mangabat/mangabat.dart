import 'package:mangabox/mangabox.dart';
import 'package:mangabox/src/mangabox_datasource.dart';

class MangabatDatasource extends MangaboxDatasource {
  MangabatDatasource({super.client})
      : super(
          name: 'Mangabat',
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

  @override
  Map<String, String>? getHeaders() {
    return {
      'Referer': 'https://readmangabat.com/',
    };
  }
}
