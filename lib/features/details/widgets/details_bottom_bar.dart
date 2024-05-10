import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/string_extensions.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsBottomBar extends ConsumerWidget {
  const DetailsBottomBar({
    super.key,
    required this.mangaId,
  });

  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = detailsControllerProvider(mangaId);
    final hasRead = ref.watch(
      provider.select((s) => s.selectedChapters.any((e) => e.read)),
    );
    final hasUnread = ref.watch(
      provider.select((s) => s.selectedChapters.any((e) => !e.read)),
    );
    final hasDownloaded = ref.watch(
      provider.select((s) => s.selectedChapters.any((e) => e.downloaded)),
    );
    final hasNonDownloaded = ref.watch(
      provider.select((s) => s.selectedChapters.any((e) => !e.downloaded)),
    );

    final strings = context.strings;

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (hasUnread)
            IconButton(
              tooltip: strings.mark_as_read,
              onPressed: () {
                ref.read(provider.notifier).markSelectedChaptersAsRead();
              },
              icon: const Icon(Icons.done_all),
            ),
          if (hasRead)
            IconButton(
              tooltip: strings.mark_as_unread,
              onPressed: () {
                ref.read(provider.notifier).markSelectedChaptersAsUnread();
              },
              icon: const Icon(Icons.remove_done),
            ),
          if (hasNonDownloaded)
            IconButton(
              // TODO(Guillaume): localize
              tooltip: 'Download'.hardcoded,
              onPressed: () {
                ref.read(provider.notifier).downloadSelectedChapters();
              },
              icon: const Icon(Icons.download),
            ),
          if (hasDownloaded)
            IconButton(
              // TODO(Guillaume): localize
              tooltip: 'Delete'.hardcoded,
              onPressed: () {
                ref.read(provider.notifier).deleteSelectedChapters();
              },
              icon: const Icon(Icons.delete),
            ),
        ],
      ),
    );
  }
}
