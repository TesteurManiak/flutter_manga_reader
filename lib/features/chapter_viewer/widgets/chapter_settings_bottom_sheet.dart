import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/showable.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/reading_direction_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChapterSettingsBottomSheet extends ConsumerWidget
    with ShowableBottomSheetMixin {
  const ChapterSettingsBottomSheet(this.mangaId, {super.key});

  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialSelectionValue = ref.watch(
      readingDirectionControllerProvider(mangaId),
    );

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
              child: Text(strings.chapter_settings_for_this_series),
            ),
            ListTile(
              title: Text(strings.lecture_mode),
              trailing: initialSelectionValue.maybeWhen(
                data: (initialSelection) {
                  return _ReadingDirectionDropdown(
                    mangaId: mangaId,
                    initialSelection: initialSelection,
                  );
                },
                orElse: () => const CircularProgressIndicator(),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ReadingDirectionDropdown extends ConsumerWidget {
  const _ReadingDirectionDropdown({
    required this.mangaId,
    required this.initialSelection,
  });

  final int mangaId;
  final ReadingDirection initialSelection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;
    return DropdownMenu<ReadingDirection>(
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      initialSelection: initialSelection,
      dropdownMenuEntries: [
        for (final v in ReadingDirection.values)
          DropdownMenuEntry(
            value: v,
            label: v.localized(strings),
          ),
      ],
      onSelected: (direction) {
        ref
            .read(readingDirectionControllerProvider(mangaId).notifier)
            .setDirection(direction);
      },
    );
  }
}
