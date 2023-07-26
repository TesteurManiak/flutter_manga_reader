import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaTile extends StatelessWidget {
  const MangaTile(this.manga, {super.key});

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    final thumbnailUrl = manga.thumbnailUrl;

    return Stack(
      children: [
        // TODO(Guillaume): use a placeholder
        if (thumbnailUrl != null) AppNetworkImage(url: thumbnailUrl),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
            child: Text(
              manga.title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
