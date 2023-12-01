import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_chapter_selected.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends ConsumerWidget {
  const ChapterTile({
    super.key,
    required this.sourceId,
    required this.mangaId,
    required this.chapter,
  });

  final String sourceId;
  final int mangaId;
  final Chapter chapter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final source = ref.watch(mangaDatasourceProvider);
    final isSelected = ref.watch(isChapterSelectedProvider(chapter, source));

    final dateUpload = chapter.dateUpload;
    final scanlator = chapter.scanlator;
    final read = chapter.read;
    final lastPageRead = chapter.lastPageRead;
    final subtitle = <String>[
      if (dateUpload != null) DateFormat.yMd().format(dateUpload),
      if (lastPageRead > 0) context.strings.last_page(lastPageRead + 1),
      if (scanlator != null && scanlator.isNotEmpty) scanlator,
    ];

    final isDark = Theme.of(context).brightness == Brightness.dark;
    final baseColor = DefaultTextStyle.of(context).style.color;

    return ListTile(
      selected: isSelected,
      textColor: read ? baseColor?.withOpacity(isDark ? .3 : .4) : null,
      title: Text(chapter.name),
      subtitle: Text(
        subtitle.join(' • '),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const IconButton(
        onPressed: null, // TODO(Guillaume): download
        icon: Icon(Icons.download_for_offline_outlined),
      ),
      onTap: () {
        final source = ref.read(mangaDatasourceProvider);
        final provider = detailsControllerProvider(chapter.mangaId, source);
        final selectionMode = ref.read(provider).selectionMode;

        if (selectionMode) {
          ref.read(provider.notifier).selectChapter(chapter);
          return;
        }

        ChapterViewerRoute(
          mangaId: mangaId,
          chapterId: chapter.id,
          sourceId: sourceId,
          initialPage: lastPageRead,
        ).push<void>(context);
      },
      onLongPress: () {
        final source = ref.read(mangaDatasourceProvider);
        final provider = detailsControllerProvider(chapter.mangaId, source);

        ref.read(provider.notifier).selectChapter(chapter);
      },
    );
  }
}
