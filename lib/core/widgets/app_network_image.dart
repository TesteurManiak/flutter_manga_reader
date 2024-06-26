import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/cache/cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef ImageProgressIndicatorBuilder = Widget Function(
  BuildContext context,
  double? progress,
);

typedef ImageErrorBuilder = Widget Function(
  BuildContext context,
  Object error,
  StackTrace? stackTrace,
);

class AppNetworkImage extends ConsumerWidget {
  const AppNetworkImage({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
    this.headers,
    this.progressIndicatorBuilder,
    this.errorBuilder,
  });

  final String? url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Map<String, String>? headers;
  final ImageProgressIndicatorBuilder? progressIndicatorBuilder;
  final ImageErrorBuilder? errorBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localUrl = url;

    if (localUrl == null ||
        localUrl.isEmpty ||
        Uri.tryParse(localUrl) == null) {
      return _ErrorWidget(height: height, width: width);
    }

    return Image(
      image: CachedNetworkImageProvider(
        localUrl,
        cacheManager: ref.watch(cacheManagerProvider),
        headers: headers,
      ),
      height: height,
      width: width,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress) {
        final progress = switch ((
          loadingProgress?.expectedTotalBytes,
          loadingProgress?.cumulativeBytesLoaded
        )) {
          (final total?, final loaded?) => loaded / total,
          _ => null,
        };

        if (progress == null || progress == 1) return child;

        final loader = switch (progressIndicatorBuilder) {
          final builder? => builder(context, progress),
          null => Center(child: CircularProgressIndicator(value: progress)),
        };

        return SizedBox(
          height: height,
          width: width,
          child: loader,
        );
      },
      errorBuilder: errorBuilder ??
          (_, __, ___) => _ErrorWidget(height: height, width: width),
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
