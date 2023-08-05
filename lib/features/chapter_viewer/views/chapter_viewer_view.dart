import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
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
  late final ChapterViewerController controller;

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    controller = ref.read(
      chapterViewerControllerProvider(widget.chapterId).notifier,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(chapterViewerControllerProvider(widget.chapterId).notifier)
          .fetchPages();
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chapterViewerControllerProvider(widget.chapterId));

    return Scaffold(
      body: state.when(
        loading: LoadingContent.new,
        loaded: _PageViewer.new,
        error: (_) => ErrorContent(onRetry: controller.fetchPages),
      ),
    );
  }
}

class _PageViewer extends StatefulWidget {
  const _PageViewer(this.pages);

  final List<ChapterPage> pages;

  @override
  State<_PageViewer> createState() => _PageViewerState();
}

class _PageViewerState extends State<_PageViewer> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.pages.length,
            itemBuilder: (context, index) {
              final page = widget.pages[index];
              return _Page(page.imageUrl);
            },
          ),
        ),
        ListenableBuilder(
          listenable: pageController,
          builder: (context, _) {
            return Text(
              '${(pageController.page?.round() ?? 0) + 1}/${widget.pages.length}',
            );
          },
        ),
      ],
    );
  }
}

class _Page extends StatelessWidget {
  const _Page(this.url);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: AppNetworkImage(
        url: url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
