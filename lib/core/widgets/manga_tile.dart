import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaTile extends StatefulWidget {
  const MangaTile(this.manga, {super.key});

  final Manga manga;

  @override
  State<MangaTile> createState() => _MangaTileState();
}

class _MangaTileState extends State<MangaTile>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final thumbnailUrl = widget.manga.thumbnailUrl;

    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Stack(
        children: [
          // TODO(Guillaume): use a placeholder
          if (thumbnailUrl != null)
            AppNetworkImage(
              url: thumbnailUrl,
              fit: BoxFit.fill,
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8,
                top: 16,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
              child: Text(
                widget.manga.title,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
