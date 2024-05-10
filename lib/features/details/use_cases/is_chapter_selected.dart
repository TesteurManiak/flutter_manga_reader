import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_chapter_selected.g.dart';

@Riverpod(dependencies: [DetailsController])
bool scopedChapterSelected(
  ScopedChapterSelectedRef ref,
  Chapter chapter,
) {
  return ref
      .watch(
        detailsControllerProvider(chapter.mangaId)
            .select((s) => s.selectedChapters),
      )
      .contains(chapter);
}
