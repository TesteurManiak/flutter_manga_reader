import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class VerticalReader extends StatefulWidget {
  const VerticalReader({
    required this.controller,
    required this.pages,
    required this.reverse,
    super.key,
  });

  final ChapterPageController controller;
  final List<ChapterPage> pages;
  final bool reverse;

  @override
  State<VerticalReader> createState() => _VerticalReaderState();
}

class _VerticalReaderState extends State<VerticalReader> {
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
      itemCount: widget.pages.length,
      cacheExtent: size.height * 2,
      itemBuilder: (context, index) {
        final page = widget.pages[index];
        return AppNetworkImage(
          url: page.imageUrl,
          fit: BoxFit.fitWidth,
          progressIndicatorBuilder: (_, progress) {
            return _LoadingPlaceholder(progress);
          },
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

class _LoadingPlaceholder extends StatelessWidget {
  const _LoadingPlaceholder(this.progress);

  final double? progress;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: CircularProgressIndicator(value: progress),
    );
  }
}
