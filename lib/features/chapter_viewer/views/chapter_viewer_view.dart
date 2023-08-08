import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_viewer_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/reading_direction_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_viewer_app_bar.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_viewer_bottom_bar.dart';
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
  late final chapterPageController = ChapterPageController(
    initialPage: widget.initialPage,
  );

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
  void dispose() {
    chapterPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chapterViewerControllerProvider(widget.chapterId));

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: ChapterViewerAppBar(widget.chapterId),
      bottomNavigationBar: ChapterViewerBottomBar(
        chapterId: widget.chapterId,
        chapterController: chapterPageController,
      ),
      body: state.when(
        loading: LoadingContent.new,
        loaded: (_, pages) {
          return _PageViewer(
            chapterController: chapterPageController,
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

class _PageViewer extends ConsumerWidget {
  const _PageViewer({
    required this.chapterController,
    required this.pages,
    required this.initialPage,
    required this.chapterId,
  });

  final ChapterPageController chapterController;
  final List<ChapterPage> pages;
  final int? initialPage;
  final int chapterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readingDirection = ref.watch(readingDirectionControllerProvider);

    return WillPopScope(
      onWillPop: () async {
        // If on last page of the chapter, mark it as read.
        if (chapterController.page == pages.length - 1) {
          await ref
              .read(chapterViewerControllerProvider(chapterId).notifier)
              .markChapterAsRead();
        }

        return true;
      },
      child: GestureDetector(
        onTap: () {
          DefaultSlidableController.maybeOf(context)?.toggle();
        },
        child: Stack(
          children: [
            PageView.builder(
              controller: chapterController.pageController,
              reverse: readingDirection.reverse,
              scrollDirection: readingDirection.direction,
              pageSnapping: !readingDirection.isContinuous,
              clipBehavior:
                  readingDirection.isContinuous ? Clip.none : Clip.hardEdge,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                final page = pages[index];

                return AppNetworkImage(
                  url: page.imageUrl,
                  fit: BoxFit.contain,
                );
              },
              allowImplicitScrolling: true,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ValueListenableBuilder<int>(
                valueListenable: chapterController,
                builder: (_, page, __) {
                  return Text('${page + 1}/${pages.length}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
