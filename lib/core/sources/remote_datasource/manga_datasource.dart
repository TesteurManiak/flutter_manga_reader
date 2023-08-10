import 'package:flutter_manga_reader/core/cache/isar_cache_service.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@riverpod
MangaDatasource mangaDatasource(MangaDatasourceRef ref) {
  return MangadexDatasource(
    lang: 'en',
    client: RestClient(
      baseUri: Uri.parse(MDConstants.apiUrl),
      httpClient: CacheClient(
        cacheService: IsarNetworkQueryCacheService(),
      ),
    ),
  );
}

@riverpod
Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
  FetchChapterPagesRef ref,
  SourceChapter sourceChapter,
) {
  return ref.watch(mangaDatasourceProvider).fetchChapterPages(sourceChapter);
}
