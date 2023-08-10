import 'package:flutter_manga_reader/core/cache/isar_cache_service.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@Riverpod(dependencies: [])
MangaDatasource mangaDatasource(MangaDatasourceRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [mangaDatasource])
Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
  FetchChapterPagesRef ref,
  SourceChapter sourceChapter,
) {
  return ref.watch(mangaDatasourceProvider).fetchChapterPages(sourceChapter);
}

@riverpod
Map<String, MangaDatasource> mangaDatasources(MangaDatasourcesRef ref) {
  final mangadexEn = MangadexDatasource(
    lang: 'en',
    client: RestClient(
      baseUri: Uri.parse(MDConstants.apiUrl),
      httpClient: CacheClient(
        cacheService: IsarNetworkQueryCacheService(),
      ),
    ),
  );

  return {
    mangadexEn.sourceId: mangadexEn,
  };
}

@riverpod
MangaDatasource getSourceFromId(GetSourceFromIdRef ref, String sourceId) {
  final sources = ref.watch(mangaDatasourcesProvider);
  final source = sources[sourceId];

  if (source == null) {
    throw ArgumentError.value(sourceId, 'sourceId', 'Unknown source');
  }

  return source;
}

@riverpod
String getSourceId(GetSourceIdRef ref, SourceManga sourceManga) {
  return ref.watch(getSourceFromIdProvider(sourceManga.sourceId)).sourceId;
}
