import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final scopedChapterSelectedProvider = Provider.autoDispose
    .family<bool, Chapter>((ref, chapter) {
      return ref
          .watch(
            detailsControllerProvider(
              chapter.mangaId,
            ).select((s) => s.selectedChapters),
          )
          .contains(chapter);
    });
