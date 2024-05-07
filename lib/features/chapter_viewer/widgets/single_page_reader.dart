import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_page_image.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class SinglePageReader extends StatelessWidget {
  const SinglePageReader({
    required this.controller,
    required this.reverse,
    required this.scrollDirection,
    required this.pages,
    super.key,
  });

  final ChapterPageController controller;
  final bool reverse;
  final Axis scrollDirection;
  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      reverse: reverse,
      scrollDirection: scrollDirection,
      itemCount: pages.length,
      itemBuilder: (context, index) {
        final page = pages[index];
        return ChapterPageImage(page: page, fit: BoxFit.contain);
      },
      allowImplicitScrolling: true,
    );
  }
}
