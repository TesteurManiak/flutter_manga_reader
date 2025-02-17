import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/app_bar_size.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/manga_grid_view.dart';
import 'package:flutter_manga_reader/features/library/controllers/library_controller.dart';
import 'package:flutter_manga_reader/features/library/controllers/update_progress_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryView extends ConsumerStatefulWidget {
  const LibraryView({super.key});

  @override
  ConsumerState<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends ConsumerState<LibraryView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final state = ref.watch(libraryControllerProvider);
    final isUpdating = ref.watch(isUpdatingProvider);

    return Scaffold(
      appBar: _AppBar(),
      floatingActionButton: isUpdating ? const _UpdateIndicator() : null,
      body: switch (state) {
        LibraryLoading() => const LoadingContent(),
        LibraryLoaded(:final mangas) => RefreshIndicator(
            onRefresh: () {
              return ref.read(libraryControllerProvider.notifier).refresh();
            },
            child: MangaGridView(
              mangas: mangas.map((e) => e.toSourceManga()).toList(),
              displayedFromSource: false,
            ),
          ),
        LibraryEmpty() => const _Empty(),
        LibraryError() => const ErrorContent(),
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _AppBar extends StatelessWidget with AppBarSizeMixin {
  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return AppBar(
      title: Text(strings.library_title),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          AsciiEmojiWidget.random(),
          Text(
            context.strings.library_empty,
            style: textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _UpdateIndicator extends ConsumerWidget {
  const _UpdateIndicator();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(
      updateProgressControllerProvider.select((s) => s.progress),
    );

    final libraryLength = ref.read(
      libraryControllerProvider.select((s) {
        return switch (s) {
          LibraryLoaded(:final mangas) => mangas.length,
          _ => 0,
        };
      }),
    );

    return FloatingActionButton.extended(
      icon: const SizedBox.square(
        dimension: 20,
        child: CircularProgressIndicator(),
      ),
      label: Text('$progress/$libraryLength'),
      onPressed: () {},
    );
  }
}
