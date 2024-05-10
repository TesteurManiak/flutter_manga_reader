import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/download_icon.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/controllers/download_queue_controller.dart';
import 'package:flutter_manga_reader/features/details/models/chapter_download_task.dart';
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
    final isSelected = ref.watch(scopedChapterSelectedProvider(chapter));
    final multiSelectionEnabled =
        ref.watch(scopedSelectionModeProvider(chapter.mangaId));

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
      trailing: multiSelectionEnabled
          ? null
          : _DownloadButton(
              chapterId: chapter.id,
              initiallyDownloaded: chapter.downloaded,
              onPressed: () {
                ref
                    .read(downloadQueueControllerProvider.notifier)
                    .queueChapterDownload(chapter);
              },
            ),
      onTap: () {
        final source = ref.read(scopedMangaDatasourceProvider);
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
        final source = ref.read(scopedMangaDatasourceProvider);
        final provider = detailsControllerProvider(chapter.mangaId, source);

        ref.read(provider.notifier).selectChapter(chapter);
      },
    );
  }
}

class _DownloadButton extends ConsumerWidget {
  const _DownloadButton({
    required this.chapterId,
    required this.initiallyDownloaded,
    required this.onPressed,
  });

  final int chapterId;
  final bool initiallyDownloaded;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = ref.watch(chapterDownloadTaskProvider(chapterId));
    final status = task?.status;
    final canDownload = !initiallyDownloaded &&
        (status == null || status == DownloadTaskStatus.failed);

    return IconButton(
      onPressed: canDownload ? onPressed : null,
      icon: DownloadIcon(
        progress: task?.progress ?? (initiallyDownloaded ? 1 : 0),
      ),
    );
  }
}
