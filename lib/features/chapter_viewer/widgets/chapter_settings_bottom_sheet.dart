import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';

class ChapterSettingsBottomSheet extends StatelessWidget
    with ShowableBottomSheetMixin {
  const ChapterSettingsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;
    final listTileTheme = ListTileTheme.of(context);

    return DraggableScrollableSheet(
      minChildSize: .4,
      initialChildSize: .4,
      maxChildSize: .9,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          controller: scrollController,
          children: [
            Padding(
              padding: listTileTheme.contentPadding ??
                  const EdgeInsetsDirectional.only(start: 16, end: 24),
              child: Text('For this series'.hardcoded),
            ),
            ListTile(
              title: Text('Lecture mode'.hardcoded),
              trailing: DropdownMenu<ReadingDirection>(
                inputDecorationTheme: const InputDecorationTheme(
                  border: InputBorder.none,
                ),
                initialSelection: ReadingDirection.leftToRight,
                dropdownMenuEntries: [
                  for (final v in ReadingDirection.values)
                    DropdownMenuEntry(
                      value: v,
                      label: v.localized(strings),
                    ),
                ],
                onSelected: (direction) {
                  if (direction != null) {
                    // TODO(Guillaume): change reading direction
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
