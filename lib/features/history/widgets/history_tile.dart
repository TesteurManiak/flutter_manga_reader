import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/separated_row.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/widgets/status_label.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class HistoryTile extends ConsumerWidget {
  const HistoryTile(this.history, {super.key});

  final ChapterHistory history;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sourceId =
        ref.watch(getSourceIdProvider(history.manga.toSourceModel()));
    final source = ref.watch(getSourceFromIdProvider(sourceId));
    final headers = source.getHeaders();
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        LibraryChapterViewerRoute(
          sourceId: source.id,
          mangaId: history.manga.id,
          chapterId: history.chapter.id,
          initialPage: history.chapter.lastPageRead,
        ).go(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SeparatedRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          separator: const SizedBox(width: 8),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: AppNetworkImage(
                url: history.manga.thumbnailUrl,
                width: size.width / 4,
                fit: BoxFit.cover,
                headers: headers,
              ),
            ),
            // TODO(Guillaume): implement chapter history tile
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    history.manga.title,
                    style: textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    history.manga.author ?? '',
                    style: textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  StatusLabel(history.manga.status),
                  const SizedBox(height: 8),
                  Text(history.chapter.name, style: textTheme.bodySmall),
                  Text(
                    DateFormat.yMMMd().format(history.readAt),
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
