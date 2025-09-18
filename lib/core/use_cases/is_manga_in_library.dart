import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final isMangaInLibraryProvider = Provider.autoDispose.family<bool, SourceManga>(
  (ref, sourceManga) {
    return ref.watch(
      watchMangasInLibraryProvider.select((value) {
        return value.maybeWhen(
          data:
              (mangas) => mangas.any(
                (manga) =>
                    manga.sourceId == sourceManga.sourceId &&
                    manga.url == sourceManga.url,
              ),
          orElse: () => false,
        );
      }),
    );
  },
);
