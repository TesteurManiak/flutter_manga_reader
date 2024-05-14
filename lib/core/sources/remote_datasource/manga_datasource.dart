import 'package:flutter_manga_reader/core/sources/remote_datasource/mangabox.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/mangadex.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@Riverpod(dependencies: [])
MangaDatasource scopedMangaDatasource(ScopedMangaDatasourceRef ref) {
  // Starts unimplemented because we need to override it in the route.
  throw UnimplementedError('No datasource set in this scope.');
}

@Riverpod(dependencies: [scopedMangaDatasource])
Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
  FetchChapterPagesRef ref,
  SourceChapter sourceChapter,
) {
  return ref
      .watch(scopedMangaDatasourceProvider)
      .fetchChapterPages(sourceChapter);
}

@riverpod
Map<String, MangaDatasource> mangaDatasources(MangaDatasourcesRef ref) {
  final mangadex = ref.watch(mangadexProvider);
  final mangabox = ref.watch(mangaboxProvider);

  return {
    for (final e in mangadex) e.id: e,
    for (final e in mangabox) e.id: e,
  };
}

@riverpod
MangaDatasource? findSourceFromId(FindSourceFromIdRef ref, String sourceId) {
  final sources = ref.watch(mangaDatasourcesProvider);
  return sources[sourceId];
}

@riverpod
MangaDatasource getSourceFromId(GetSourceFromIdRef ref, String sourceId) {
  final source = ref.watch(findSourceFromIdProvider(sourceId));
  if (source == null) {
    throw ArgumentError.value(sourceId, 'sourceId', 'Unknown source');
  }
  return source;
}
