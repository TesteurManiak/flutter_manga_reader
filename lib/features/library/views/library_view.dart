import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/library/controllers/library_controller.dart';
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

    return Scaffold(
      appBar: _AppBar(),
      body: state.when(
        loading: LoadingContent.new,
        loaded: (mangas) {
          return RefreshIndicator(
            onRefresh: () async {
              // TODO(Guillaume): refresh library chapters
            },
            child: MangaGridView(
              mangas: mangas.map((e) => e.toSourceModel()).toList(),
              displayedFromSource: false,
            ),
          );
        },
        empty: () => const _Empty(),
        error: (_) => const ErrorContent(),
      ),
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
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          const AsciiEmojiWidget(AsciiEmoji.confused),
          Text(
            context.strings.library_empty,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
