import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_manga_in_library.g.dart';

@Riverpod(dependencies: [watchMangasInLibrary])
bool isMangaInLibrary(IsMangaInLibraryRef ref, SourceManga sourceManga) {
  return ref.watch(
    watchMangasInLibraryProvider.select((value) {
      return value.maybeWhen(
        data: (mangas) => mangas.any(
          (manga) =>
              manga.sourceId == sourceManga.sourceId &&
              manga.url == sourceManga.url,
        ),
        orElse: () => false,
      );
    }),
  );
}
