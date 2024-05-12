import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoverViewerView extends ConsumerWidget {
  const CoverViewerView(this.coverUrl, {super.key});

  final String coverUrl;

  static const tag = 'cover_viewer';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headers =
        ref.watch(scopedMangaDatasourceProvider.select((s) => s.getHeaders()));
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
                headers: headers,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
