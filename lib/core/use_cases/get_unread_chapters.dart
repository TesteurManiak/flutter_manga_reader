import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_unread_chapters.g.dart';

@Riverpod(
  dependencies: [
    getMangaIdFromSource,
    watchUnreadChaptersCountForManga,
  ],
)
int? getUnreadChapters(GetUnreadChaptersRef ref, SourceManga sourceManga) {
  final mangaId = ref
      .watch(getMangaIdFromSourceProvider(sourceManga))
      .whenOrNull(data: (id) => id);

  if (mangaId == null) return null;

  final count =
      ref.watch(watchUnreadChaptersCountForMangaProvider(mangaId)).maybeWhen(
            data: (data) => data,
            orElse: () => 0,
          );

  return count == 0 ? null : count;
}
