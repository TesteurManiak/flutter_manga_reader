import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.fit,
  });

  final String url;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      fit: fit,
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
          child: CircularProgressIndicator(value: progress.progress),
        );
      },
      errorWidget: (_, __, ___) {
        return const Center(
          child: Icon(Icons.image_not_supported),
        );
      },
    );
  }
}
