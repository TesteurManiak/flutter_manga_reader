import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/providers/clock.dart';
import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/download_icon.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/controllers/download_queue_controller.dart';
import 'package:flutter_manga_reader/features/details/models/chapter_download_task.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_chapter_selected.dart';
import 'package:flutter_manga_reader/features/history/providers/incognito_mode_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends ConsumerWidget {
  const ChapterTile({
    super.key,
    required this.sourceId,
    required this.manga,
    required this.chapter,
  });

  final String sourceId;
  final Manga manga;
  final Chapter chapter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(scopedChapterSelectedProvider(chapter));
    final locale = ref.watch(
      localeControllerProvider.select((locale) => locale.languageCode),
    );

    final dateUpload = chapter.dateUpload;
    final scanlator = chapter.scanlator;
    final read = chapter.read;
    final lastPageRead = chapter.lastPageRead;
    final subtitle = <String>[
      DateFormat.yMMMd(locale).format(dateUpload),
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
      trailing: _DownloadButton(
        chapterId: chapter.id,
        initiallyDownloaded: chapter.downloaded,
        onPressed: () {
          final source = ref.read(scopedMangaDatasourceProvider);
          ref
              .read(downloadQueueControllerProvider.notifier)
              .queueChapterDownload(chapter, source.getHeaders());
        },
      ),
      onTap: () {
        final provider = detailsControllerProvider(chapter.mangaId);
        final selectionMode = ref.read(provider).selectionMode;

        if (selectionMode) {
          ref.read(provider.notifier).selectChapter(chapter);
          return;
        }

        final incognitoModeEnabled = ref.read(incognitoModeControllerProvider);
        if (!incognitoModeEnabled) {
          final clock = ref.read(appClockProvider);
          ref.read(localDatasourceProvider).saveChapterHistory(
                ChapterHistory(
                  manga: manga,
                  chapter: chapter,
                  readAt: clock.now(),
                ),
              );
        }

        ChapterViewerRoute.go(
          context,
          mangaId: manga.id,
          chapterId: chapter.id,
          sourceId: sourceId,
          initialPage: lastPageRead,
        );
      },
      onLongPress: () {
        final provider = detailsControllerProvider(chapter.mangaId);

        ref.read(provider.notifier).selectChapter(chapter);
      },
    );
  }
}

// TODO(Guillaume): Rework the design
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
