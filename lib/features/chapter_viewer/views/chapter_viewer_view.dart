import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/services/toaster_service.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_viewer_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_reader.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_viewer_app_bar.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_viewer_bottom_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterViewerView extends ConsumerStatefulWidget {
  const ChapterViewerView({
    super.key,
    required this.mangaId,
    required this.chapterId,
    this.initialPage,
  });

  final int mangaId;
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
        mangaId: widget.mangaId,
        chapterId: widget.chapterId,
        initialPage: widget.initialPage,
      ),
    );
  }
}

class _Content extends ConsumerStatefulWidget {
  const _Content({
    required this.mangaId,
    required this.chapterId,
    required this.initialPage,
  });

  final int mangaId;
  final int chapterId;
  final int? initialPage;

  @override
  ConsumerState<_Content> createState() => _ContentState();
}

class _ContentState extends ConsumerState<_Content> {
  late final chapterPageController = ChapterPageController(
    initialPage: widget.initialPage,
  );

  @override
  void initState() {
    super.initState();

    final controller = ref.read(
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
    final provider = chapterViewerControllerProvider(widget.chapterId);
    final state = ref.watch(provider);
    final toaster = ref.watch(toasterServiceProvider);

    final strings = context.strings;

    ref.listen(provider.select((s) => s.pageLengthOrNull), (_, next) {
      if (next == 0) {
        toaster.showToast(Text(strings.no_page_found));
        // Delay slightly the pop to avoid driving condition between the page transitions
        Future.delayed(const Duration(milliseconds: 300), () {
          if (context.mounted) context.pop();
        });
      }
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: ChapterViewerAppBar(widget.chapterId),
      bottomNavigationBar: switch (state) {
        ChapterViewerLoaded(:final pages) when pages.isNotEmpty =>
          ChapterViewerBottomBar(
            mangaId: widget.mangaId,
            pageNumber: pages.length,
            chapterController: chapterPageController,
          ),
        _ => null,
      },
      body: switch (state) {
        ChapterViewerLoading() => const LoadingContent(),
        ChapterViewerLoaded(:final pages) when pages.isEmpty =>
          const LoadingContent(),
        ChapterViewerLoaded(:final chapter, :final pages) => _PageViewer(
          chapter: chapter,
          chapterController: chapterPageController,
          pages: pages,
          initialPage: widget.initialPage,
        ),
        ChapterViewerError() => ErrorContent(
          onRetry: () => ref.read(provider.notifier).fetchPages(),
        ),
      },
    );
  }
}

class _PageViewer extends ConsumerWidget {
  const _PageViewer({
    required this.chapterController,
    required this.pages,
    required this.initialPage,
    required this.chapter,
  });

  final ChapterPageController chapterController;
  final List<ChapterPage> pages;
  final int? initialPage;
  final Chapter chapter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (chapter.read) return;

        final page = chapterController.page;

        // If on last page of the chapter, mark it as read.
        if (page == pages.length - 1) {
          ref
              .read(chapterViewerControllerProvider(chapter.id).notifier)
              .markChapterAsRead();
        } else if (page != 0 && page != initialPage) {
          ref
              .read(chapterViewerControllerProvider(chapter.id).notifier)
              .setLastPageRead(page);
        }
      },
      child: GestureDetector(
        onTap: () => DefaultSlidableController.maybeOf(context)?.toggle(),
        child: Stack(
          children: [
            ChapterReader(
              chapter: chapter,
              controller: chapterController,
              pages: pages,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ValueListenableBuilder<int>(
                valueListenable: chapterController,
                builder: (_, page, _) {
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
