import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_manga_favorite.g.dart';

@Riverpod(dependencies: [watchMangasInLibrary])
bool isMangaFavorite(IsMangaFavoriteRef ref, int mangaId) {
  return ref.watch(watchMangasInLibraryProvider).maybeWhen(
        data: (mangas) => mangas.any((manga) => manga.id == mangaId),
        orElse: () => false,
      );
}
