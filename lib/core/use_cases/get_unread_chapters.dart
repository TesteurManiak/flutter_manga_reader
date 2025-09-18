import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final getUnreadChaptersProvider = Provider.autoDispose
    .family<int?, SourceManga>((ref, sourceManga) {
      final mangaId = ref
          .watch(
            getMangaByUrlAndSourceIdProvider((
              url: sourceManga.url,
              sourceId: sourceManga.sourceId,
            )),
          )
          .whenOrNull(data: (manga) => manga?.id);

      if (mangaId == null) return null;

      final count = ref
          .watch(watchUnreadChaptersCountForMangaProvider(mangaId))
          .maybeWhen(data: (data) => data, orElse: () => 0);

      return count == 0 ? null : count;
    });
