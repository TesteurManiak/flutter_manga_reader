import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_settings_bottom_sheet.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/reading_direction_menu.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChapterViewerBottomBar extends ConsumerWidget {
  const ChapterViewerBottomBar({
    super.key,
    required this.mangaId,
    required this.pageNumber,
    required this.chapterController,
  });

  final int mangaId;
  final int pageNumber;
  final ChapterPageController chapterController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slidable(
      direction: SlideDirection.down,
      child: _UnconstrainedBottomBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: chapterController,
              builder: (_, page, __) {
                return _Slider(
                  totalPages: pageNumber,
                  chapterController: chapterController,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReadingDirectionPopupMenuButton(mangaId),
                IconButton(
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: () {
                    ChapterSettingsBottomSheet(mangaId).show(
                      context,
                      isScrollControlled: true,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _UnconstrainedBottomBar extends StatelessWidget {
  const _UnconstrainedBottomBar({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomBarTheme = theme.bottomAppBarTheme;

    return Material(
      elevation: bottomBarTheme.elevation ?? 3,
      shape: const RoundedRectangleBorder(),
      color: bottomBarTheme.color ?? theme.colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: bottomBarTheme.padding ??
              const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
          child: child,
        ),
      ),
    );
  }
}

class _Slider extends StatelessWidget {
  const _Slider({
    required this.totalPages,
    required this.chapterController,
  });

  final int totalPages;
  final ChapterPageController chapterController;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

    return Row(
      children: [
        Text('${chapterController.page + 1}', style: style),
        Expanded(
          child: Slider(
            max: totalPages.toDouble(),
            value: chapterController.page.toDouble(),
            divisions: totalPages - 1,
            onChanged: (v) => chapterController.page = (v - 1).toInt(),
          ),
        ),
        Text('$totalPages', style: style),
      ],
    );
  }
}
