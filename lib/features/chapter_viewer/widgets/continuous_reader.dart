import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/chapter_page_image.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
  final scrollController = ItemScrollController();
  final positionListener = ItemPositionsListener.create();

  late final initialPage = widget.controller.page;

  @override
  void initState() {
    super.initState();

    // TODO(Guillaume): fix synchronization between slider and scroll.
    positionListener.itemPositions.addListener(_itemPositionsListener);
  }

  @override
  void dispose() {
    positionListener.itemPositions.removeListener(_itemPositionsListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return ScrollablePositionedList.builder(
      itemScrollController: scrollController,
      itemPositionsListener: positionListener,
      initialScrollIndex: initialPage,
      scrollDirection: widget.scrollDirection,
      reverse: widget.reverse,
      itemCount: widget.pages.length,
      minCacheExtent: switch (widget.scrollDirection) {
        Axis.horizontal => size.width * 2,
        Axis.vertical => size.height * 2,
      },
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

  void _itemPositionsListener() {
    final positions = positionListener.itemPositions.value;
    if (positions.length == 1) {
      widget.controller.page = positions.first.index;
    } else {
      final newPositions = positions.where(
        (pos) => pos.itemTrailingEdge >= 0 && pos.itemLeadingEdge <= 1,
      );
      if (newPositions.isEmpty) return;
      widget.controller.page = newPositions.reduce(
        (max, pos) {
          return pos.itemTrailingEdge > max.itemTrailingEdge ? pos : max;
        },
      ).index;
    }
  }
}
