import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_viewer_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_settings_bottom_sheet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterViewerView extends ConsumerStatefulWidget {
  const ChapterViewerView({
    super.key,
    required this.chapterId,
    this.initialPage,
  });

  final int chapterId;
  final int? initialPage;

  @override
  ConsumerState<ChapterViewerView> createState() => _ChapterViewerViewState();
}

class _ChapterViewerViewState extends ConsumerState<ChapterViewerView> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultSlidableController(
      initiallyShown: false,
      child: _Content(
        chapterId: widget.chapterId,
        initialPage: widget.initialPage,
      ),
    );
  }
}

class _Content extends ConsumerStatefulWidget {
  const _Content({
    required this.chapterId,
    required this.initialPage,
  });

  final int chapterId;
  final int? initialPage;

  @override
  ConsumerState<_Content> createState() => _ContentState();
}

class _ContentState extends ConsumerState<_Content> {
  late final ChapterViewerController controller;

  @override
  void initState() {
    super.initState();

    controller = ref.read(
      chapterViewerControllerProvider(widget.chapterId).notifier,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchPages();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chapterViewerControllerProvider(widget.chapterId));

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: _DismissableAppBar(widget.chapterId),
      bottomNavigationBar: const _DismissableBottomBar(),
      body: state.when(
        loading: LoadingContent.new,
        loaded: (_, pages) {
          return _PageViewer(
            pages: pages,
            initialPage: widget.initialPage,
            chapterId: widget.chapterId,
          );
        },
        error: (_) => ErrorContent(onRetry: controller.fetchPages),
      ),
    );
  }
}

class _DismissableAppBar extends ConsumerWidget with AppBarSizeMixin {
  const _DismissableAppBar(this.chapterId);

  final int chapterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapterTitle = ref.watch(
      chapterViewerControllerProvider(chapterId).select(
        (s) => s.maybeMap(
          loaded: (loaded) => loaded.chapter.name,
          orElse: () => null,
        ),
      ),
    );
    return SlidablePreferredSize(
      child: AppBar(
        title: Text.rich(
          TextSpan(text: chapterTitle),
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.bookmark_outline),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.public),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class _DismissableBottomBar extends StatelessWidget {
  const _DismissableBottomBar();

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.paddingOf(context).bottom;
    final height = kBottomNavigationBarHeight + bottom;

    return Slidable(
      height: height,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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

class _PageViewer extends ConsumerStatefulWidget {
  const _PageViewer({
    required this.pages,
    required this.initialPage,
    required this.chapterId,
  });

  final List<ChapterPage> pages;
  final int? initialPage;
  final int chapterId;

  @override
  ConsumerState<_PageViewer> createState() => _PageViewerState();
}

class _PageViewerState extends ConsumerState<_PageViewer> {
  late final pageController = PageController(
    initialPage: widget.initialPage ?? 0,
  );
  late final pageNotifier = ValueNotifier<int>(pageController.initialPage);

  @override
  void dispose() {
    pageController.dispose();
    pageNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // If on last page of the chapter, mark it as read.
        if (pageController.page == widget.pages.length - 1) {
          await ref
              .read(chapterViewerControllerProvider(widget.chapterId).notifier)
              .markChapterAsRead();
        }

        return true;
      },
      child: GestureDetector(
        onTap: () {
          DefaultSlidableController.maybeOf(context)?.toggle();
        },
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: widget.pages.length,
                itemBuilder: (context, index) {
                  final page = widget.pages[index];

                  return AppNetworkImage(
                    url: page.imageUrl,
                    fit: BoxFit.contain,
                  );
                },
                onPageChanged: (value) {
                  pageNotifier.value = value;
                  DefaultSlidableController.maybeOf(context)?.hide();
                },
              ),
            ),
            ValueListenableBuilder<int>(
              valueListenable: pageNotifier,
              builder: (_, page, __) {
                return Text('${page + 1}/${widget.pages.length}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
