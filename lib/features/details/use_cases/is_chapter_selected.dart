import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_chapter_selected.g.dart';

@Riverpod(dependencies: [DetailsController])
bool isChapterSelected(
  IsChapterSelectedRef ref,
  Chapter chapter,
  MangaDatasource mangaDatasource,
) {
  return ref
      .watch(
        detailsControllerProvider(chapter.mangaId, mangaDatasource)
            .select((s) => s.selectedChapters),
      )
      .contains(chapter);
}
