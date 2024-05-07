import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/download_icon.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_chapter_selected.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends ConsumerStatefulWidget {
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
  ConsumerState<ChapterTile> createState() => _ChapterTileState();
}

class _ChapterTileState extends ConsumerState<ChapterTile> {
  late final ValueNotifier<double> progressNotifier;

  @override
  void initState() {
    super.initState();
    progressNotifier = ValueNotifier(widget.chapter.downloaded ? 1 : 0);
  }

  @override
  void dispose() {
    progressNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final source = ref.watch(mangaDatasourceProvider);
    final isSelected =
        ref.watch(isChapterSelectedProvider(widget.chapter, source));

    final dateUpload = widget.chapter.dateUpload;
    final scanlator = widget.chapter.scanlator;
    final read = widget.chapter.read;
    final lastPageRead = widget.chapter.lastPageRead;
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
      title: Text(widget.chapter.name),
      subtitle: Text(
        subtitle.join(' • '),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: _DownloadButton(
        progressNotifier: progressNotifier,
        onPressed: () {
          ref
              .read(detailsControllerProvider(widget.mangaId, source).notifier)
              .downloadChapter(
                chapter: widget.chapter,
                onProgress: (progress) {
                  // TODO(Guillaume): add error handling
                  if (progress == 1) {
                    ref.read(localDatasourceProvider).setChapterDownloaded(
                          chapterId: widget.chapter.id,
                          downloaded: true,
                        );
                  }
                  progressNotifier.value = progress;
                },
              );
        },
      ),
      onTap: () {
        final source = ref.read(mangaDatasourceProvider);
        final provider =
            detailsControllerProvider(widget.chapter.mangaId, source);
        final selectionMode = ref.read(provider).selectionMode;

        if (selectionMode) {
          ref.read(provider.notifier).selectChapter(widget.chapter);
          return;
        }

        ChapterViewerRoute(
          mangaId: widget.mangaId,
          chapterId: widget.chapter.id,
          sourceId: widget.sourceId,
          initialPage: lastPageRead,
        ).push<void>(context);
      },
      onLongPress: () {
        final source = ref.read(mangaDatasourceProvider);
        final provider =
            detailsControllerProvider(widget.chapter.mangaId, source);

        ref.read(provider.notifier).selectChapter(widget.chapter);
      },
    );
  }
}

class _DownloadButton extends StatelessWidget {
  const _DownloadButton({
    required this.progressNotifier,
    required this.onPressed,
  });

  final ValueNotifier<double> progressNotifier;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: progressNotifier,
      builder: (context, progress, _) {
        return IconButton(
          onPressed: progress == 0 ? onPressed : null,
          icon: DownloadIcon(progress: progress),
        );
      },
    );
  }
}
