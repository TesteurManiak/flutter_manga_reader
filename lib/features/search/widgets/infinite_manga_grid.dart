import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/infinite_scroller.dart';
import 'package:flutter_manga_reader/core/widgets/manga_grid_view.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class InfiniteMangaGrid extends StatefulWidget {
  const InfiniteMangaGrid({
    super.key,
    required this.fetchMore,
    required this.mangas,
  });

  final AsyncCallback fetchMore;
  final List<SourceManga> mangas;

  @override
  State<InfiniteMangaGrid> createState() => _InfiniteMangaGridState();
}

class _InfiniteMangaGridState extends State<InfiniteMangaGrid> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteScroller(
      scrollController: scrollController,
      fetchMore: widget.fetchMore,
      child: MangaGridView(
        controller: scrollController,
        mangas: widget.mangas,
        displayedFromSource: true,
      ),
    );
  }
}
