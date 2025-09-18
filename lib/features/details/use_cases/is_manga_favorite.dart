import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isMangaFavoriteProvider = Provider.autoDispose.family<bool, int>((
  ref,
  mangaId,
) {
  return ref
      .watch(watchMangasInLibraryProvider)
      .maybeWhen(
        data: (mangas) => mangas.any((manga) => manga.id == mangaId),
        orElse: () => false,
      );
});
