import 'package:flutter_manga_reader/core/cache/drift_cache_service.dart';
import 'package:flutter_manga_reader/core/providers/clock.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@Riverpod(dependencies: [])
MangaDatasource mangaDatasource(MangaDatasourceRef ref) {
  // Starts unimplemented because we need to override it in the route.
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
  final mangadexClient = RestClient(
    baseUri: Uri.parse(MDConstants.apiUrl),
    httpClient: CacheClient(
      cacheService: DriftNetworkQueryCacheService(
        clock: ref.watch(appClockProvider),
        database: ref.watch(appDatabaseProvider),
      ),
    ),
  );

  final mangadexEn = MangadexDatasource(lang: 'en', client: mangadexClient);
  final mangadexFr = MangadexDatasource(lang: 'fr', client: mangadexClient);

  return {
    mangadexEn.sourceId: mangadexEn,
    mangadexFr.sourceId: mangadexFr,
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
