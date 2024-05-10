import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';

class CoverViewerView extends StatelessWidget {
  const CoverViewerView(this.coverUrl, {super.key});

  final String coverUrl;

  static const tag = 'cover_viewer';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: Hero(
            tag: tag,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: AppNetworkImage(
                url: coverUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
