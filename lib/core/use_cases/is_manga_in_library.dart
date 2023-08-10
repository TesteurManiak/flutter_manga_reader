import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_manga_in_library.g.dart';

@Riverpod(dependencies: [watchMangasInLibrary])
bool isMangaInLibrary(IsMangaInLibraryRef ref, SourceManga sourceManga) {
  return ref.watch(watchMangasInLibraryProvider).maybeWhen(
        data: (mangas) {
          return mangas.any((manga) => manga.isSameAs(sourceManga));
        },
        orElse: () => false,
      );
}

extension on Manga {
  bool isSameAs(SourceManga sourceManga) {
    return title == sourceManga.title &&
        url == sourceManga.url &&
        lang == sourceManga.lang &&
        source == sourceManga.source;
  }
}
