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
    final readingProperties =
        (readingDirection.isVertical, readingDirection.isContinuous);

    return switch (readingProperties) {
      (true, true) => _VerticalReader(pages: pages),
      _ => _HorizontalReader(
          controller: controller,
          pages: pages,
          reverse: readingDirection.reverse,
        ),
    };
  }
}

class _HorizontalReader extends StatelessWidget {
  const _HorizontalReader({
    required this.controller,
    required this.reverse,
    required this.pages,
  });

  final ChapterPageController controller;
  final bool reverse;
  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      reverse: reverse,
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

class _VerticalReader extends StatelessWidget {
  const _VerticalReader({
    required this.pages,
  });

  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            final page = pages[index];
            return AppNetworkImage(url: page.imageUrl);
          },
        ),
      ],
    );
  }
}
