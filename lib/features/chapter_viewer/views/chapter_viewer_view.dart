import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_viewer_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterViewerView extends ConsumerStatefulWidget {
  const ChapterViewerView({
    super.key,
    required this.chapterId,
  });

  final int chapterId;

  @override
  ConsumerState<ChapterViewerView> createState() => _ChapterViewerViewState();
}

class _ChapterViewerViewState extends ConsumerState<ChapterViewerView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(chapterViewerControllerProvider(widget.chapterId).notifier)
          .fetchPages();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chapterViewerControllerProvider(widget.chapterId));

    return Scaffold(
      body: state.when(
        loading: LoadingContent.new,
        loaded: _PageViewer.new,
        error: (_) => _Error(widget.chapterId),
      ),
    );
  }
}

class _PageViewer extends StatelessWidget {
  const _PageViewer(this.pages);

  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        final page = pages[index];

        return AppNetworkImage(
          url: page.imageUrl,
          fit: BoxFit.fitWidth,
        );
      },
    );
  }
}

class _Error extends ConsumerWidget {
  const _Error(this.chapterId);

  final int chapterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error),
          Text(strings.generic_error),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(chapterViewerControllerProvider(chapterId).notifier)
                  .fetchPages();
            },
            child: Text('Retry'.hardcoded),
          ),
        ],
      ),
    );
  }
}
