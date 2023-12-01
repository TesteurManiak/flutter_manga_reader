import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

typedef ProgressIndicatorBuilder = Widget Function(
  BuildContext context,
  double? progress,
);

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
    this.progressIndicatorBuilder,
  });

  final String? url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;

  @override
  Widget build(BuildContext context) {
    final localUrl = url;

    if (localUrl == null ||
        localUrl.isEmpty ||
        Uri.tryParse(localUrl) == null) {
      return _ErrorWidget(height: height, width: width);
    }

    return CachedNetworkImage(
      imageUrl: localUrl,
      width: width,
      fit: fit,
      progressIndicatorBuilder: (context, url, progress) {
        if (progressIndicatorBuilder case final builder?) {
          return builder(context, progress.progress);
        }

        return Center(
          child: CircularProgressIndicator(value: progress.progress),
        );
      },
      errorWidget: (_, __, ___) => _ErrorWidget(height: height, width: width),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({
    required this.height,
    required this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: height,
        width: width,
      ),
      child: const Center(
        child: Icon(Icons.image_not_supported),
      ),
    );
  }
}
