import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

class ChapterSettingsBottomSheet extends StatelessWidget
    with ShowableBottomSheetMixin {
  const ChapterSettingsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: const Text('For this series'),
            ),
            const ListTile(
              title: Text('Lecture mode'),
              // trailing: DropdownMenu(dropdownMenuEntries: dropdownMenuEntries),
            ),
          ],
        );
      },
    );
  }
}
