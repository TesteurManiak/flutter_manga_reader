import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_page_image.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ContinuousReader extends StatefulWidget {
  const ContinuousReader({
    required this.chapter,
    required this.controller,
    required this.reverse,
    required this.scrollDirection,
    required this.pages,
    super.key,
  });

  final Chapter chapter;
  final ChapterPageController controller;
  final bool reverse;
  final Axis scrollDirection;
  final List<ChapterPage> pages;

  @override
  State<ContinuousReader> createState() => _ContinuousReaderState();
}

class _ContinuousReaderState extends State<ContinuousReader> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Sync page controller with scroll offset
    widget.controller.addListener(_pageControllerListener);

    // Sync scroll offset with page controller
    scrollController.addListener(() {
      final page = scrollController.offset / MediaQuery.sizeOf(context).height;
      widget.controller.page = page.round();
    });

    // Set initial offset
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final page = widget.controller.page;
      if (page == 0) return;

      final offset = page * MediaQuery.sizeOf(context).height;
      scrollController.jumpTo(offset);
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
    final size = MediaQuery.sizeOf(context);

    return ListView.builder(
      reverse: widget.reverse,
      scrollDirection: widget.scrollDirection,
      itemCount: widget.pages.length,
      cacheExtent: size.height * 2,
      itemBuilder: (context, index) {
        final page = widget.pages[index];
        return ChapterPageImage(
          chapter: widget.chapter,
          page: page,
          fit: BoxFit.fitWidth,
        );
      },
    );
  }

  void _pageControllerListener() {
    final size = MediaQuery.sizeOf(context);
    final page = widget.controller.page;
    final currentScrollPage = (scrollController.offset / size.height).round();

    if (page == currentScrollPage) return;

    final index = widget.reverse ? widget.pages.length - page - 1 : page;
    final offset = index * size.height;

    scrollController.jumpTo(offset);
  }
}
