import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/reading_direction_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/vertical_reader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterReader extends ConsumerWidget {
  const ChapterReader({
    super.key,
    required this.mangaId,
    required this.controller,
    required this.pages,
  });

  final int mangaId;
  final ChapterPageController controller;
  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(readingDirectionControllerProvider(mangaId));

    return value.when(
      data: (readingDirection) {
        return switch (readingDirection.isVertical) {
          true => VerticalReader(
              controller: controller,
              pages: pages,
              reverse: readingDirection.reverse,
            ),
          false => _HorizontalReader(
              controller: controller,
              pages: pages,
              pageSnapping: !readingDirection.isContinuous,
              reverse: readingDirection.reverse,
            ),
        };
      },
      error: (error, stack) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
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
