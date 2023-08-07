import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
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
    final hasRead = ref.watch(
      detailsControllerProvider(mangaId).select(
        (s) => s.selectedChapters.any((e) => e.read),
      ),
    );
    final hasUnread = ref.watch(
      detailsControllerProvider(mangaId).select(
        (s) => s.selectedChapters.any((e) => !e.read),
      ),
    );

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (hasUnread)
            IconButton(
              tooltip: 'Mark as read'.hardcoded,
              onPressed: () {
                ref
                    .read(detailsControllerProvider(mangaId).notifier)
                    .markSelectedChaptersAsRead();
              },
              icon: const Icon(Icons.done_all),
            ),
          if (hasRead)
            IconButton(
              tooltip: 'Mark as unread'.hardcoded,
              onPressed: () {
                ref
                    .read(detailsControllerProvider(mangaId).notifier)
                    .markSelectedChaptersAsUnread();
              },
              icon: const Icon(Icons.remove_done),
            ),
        ],
      ),
    );
  }
}
