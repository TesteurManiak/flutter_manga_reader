import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/reading_direction_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterReader extends ConsumerWidget {
  const ChapterReader({
    super.key,
    required this.controller,
    required this.pages,
  });

  final ChapterPageController controller;
  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readingDirection = ref.watch(readingDirectionControllerProvider);

    return switch (readingDirection.isVertical) {
      true => _VerticalReader(
          controller: controller,
          pages: pages,
          reverse: readingDirection.reverse,
        ),
      false => _HorizontalReader(
          controller: controller,
          pages: pages,
          pageSnapping: readingDirection.isContinuous,
          reverse: readingDirection.reverse,
        ),
    };
  }
}

class _HorizontalReader extends StatelessWidget {
  const _HorizontalReader({
    required this.controller,
    required this.reverse,
    required this.pageSnapping,
    required this.pages,
  });

  final ChapterPageController controller;
  final bool reverse;
  final bool pageSnapping;
  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      reverse: reverse,
      pageSnapping: pageSnapping,
      itemCount: pages.length,
      itemBuilder: (context, index) {
        final page = pages[index];

        return AppNetworkImage(
          url: page.imageUrl,
          fit: BoxFit.contain,
        );
      },
      allowImplicitScrolling: true,
    );
  }
}

class _VerticalReader extends StatefulWidget {
  const _VerticalReader({
    required this.controller,
    required this.pages,
    required this.reverse,
  });

  final ChapterPageController controller;
  final List<ChapterPage> pages;
  final bool reverse;

  @override
  State<_VerticalReader> createState() => _VerticalReaderState();
}

class _VerticalReaderState extends State<_VerticalReader> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_pageControllerListener);

    scrollController.addListener(() {
      final page = scrollController.offset / MediaQuery.sizeOf(context).height;
      widget.controller.page = page.round();
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_pageControllerListener);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemCount: widget.pages.length,
          itemBuilder: (context, realIndex) {
            final index = widget.reverse
                ? widget.pages.length - realIndex - 1
                : realIndex;
            final page = widget.pages[index];
            return AppNetworkImage(url: page.imageUrl);
          },
        ),
      ],
    );
  }

  void _pageControllerListener() {
    final size = MediaQuery.sizeOf(context);
    final page = widget.controller.page;
    final scrollPage = (scrollController.offset / size.height).round();

    if (page == scrollPage) return;

    final index = widget.reverse ? widget.pages.length - page - 1 : page;
    final offset = index * size.height;

    scrollController.jumpTo(offset);
  }
}
