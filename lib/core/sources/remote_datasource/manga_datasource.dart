import 'package:flutter_manga_reader/core/cache/isar_cache_service.dart';
import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@riverpod
MangaDatasource mangaDatasource(MangaDatasourceRef ref) {
  final languageCode = ref.watch(
    localeControllerProvider.select((locale) => locale.languageCode),
  );

  return MangadexDatasource(
    lang: languageCode,
    dexLang: languageCode,
    client: RestClient(
      baseUri: Uri.parse(MDConstants.apiUrl),
      httpClient: CacheClient(
        cacheService: IsarNetworkQueryCacheService(),
      ),
    ),
  );
}
