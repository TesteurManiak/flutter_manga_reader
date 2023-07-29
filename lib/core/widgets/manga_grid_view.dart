import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/manga_tile.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaGridView extends StatelessWidget {
  const MangaGridView({
    super.key,
    required this.mangas,
    this.controller,
  });

  final List<Manga> mangas;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: controller,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.69,
        maxCrossAxisExtent: 160,
      ),
      itemCount: mangas.length,
      itemBuilder: (_, index) => MangaTile(mangas[index]),
    );
  }
}
