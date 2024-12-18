import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/manga_tile.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaGridView extends StatelessWidget {
  const MangaGridView({
    super.key,
    required this.mangas,
    required this.displayedFromSource,
    this.controller,
  });

  final List<SourceManga> mangas;
  final ScrollController? controller;
  final bool displayedFromSource;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return GridView.builder(
      controller: controller,
      cacheExtent: screenHeight * 2,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.69,
        maxCrossAxisExtent: 160,
      ),
      itemCount: mangas.length,
      itemBuilder: (_, index) {
        return MangaTile(
          manga: mangas[index],
          displayedFromSource: displayedFromSource,
        );
      },
    );
  }
}
