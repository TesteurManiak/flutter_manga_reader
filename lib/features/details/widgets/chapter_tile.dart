import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_chapter_selected.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends ConsumerWidget {
  const ChapterTile(this.chapter, {super.key});

  final Chapter chapter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(isChapterSelectedProvider(chapter));

    final dateUpload = chapter.dateUpload;
    final scanlator = chapter.scanlator;
    final read = chapter.read;
    final subtitle = <String>[
      if (dateUpload != null) DateFormat.yMd().format(dateUpload),
      if (scanlator != null && scanlator.isNotEmpty) scanlator,
    ];

    final baseColor = DefaultTextStyle.of(context).style.color;
    final readStyle = TextStyle(color: baseColor?.withOpacity(.3));

    return ListTile(
      selected: isSelected,
      title: Text(
        chapter.name,
        style: read ? readStyle : null,
      ),
      subtitle: Text(
        subtitle.join(' • '),
        style: read ? readStyle : null,
      ),
      trailing: const IconButton(
        onPressed: null, // TODO(Guillaume): download
        icon: Icon(Icons.download_for_offline_outlined),
      ),
      onTap: () {
        final selectionMode =
            ref.read(detailsControllerProvider(chapter.mangaId)).selectionMode;
        if (selectionMode) {
          ref
              .read(detailsControllerProvider(chapter.mangaId).notifier)
              .selectChapter(chapter);
          return;
        }

        ChapterViewerRoute(chapterId: chapter.id).push<void>(context);
      },
      onLongPress: () {
        ref
            .read(detailsControllerProvider(chapter.mangaId).notifier)
            .selectChapter(chapter);
      },
    );
  }
}
