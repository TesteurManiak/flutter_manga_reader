import 'package:mangabox/src/mangabox.dart';

mixin AdvancedSearchMixin on MangaboxDatasource {
  @override
  String advancedSearchQuery(int page, String query) {
    return Uri(
      pathSegments: ['advanced_search'],
      queryParameters: {'page': '$page', 'keyw': normalizeSearchQuery(query)},
    ).toString();
  }
}
