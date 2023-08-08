import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_settings_bottom_sheet.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/reading_direction_menu.dart';

class ChapterViewerBottomBar extends StatelessWidget {
  const ChapterViewerBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      direction: SlideDirection.down,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ReadingDirectionPopupMenuButton(),
            IconButton(
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {
                const ChapterSettingsBottomSheet().show(
                  context,
                  isScrollControlled: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
