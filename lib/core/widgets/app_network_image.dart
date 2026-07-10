import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../images/cached_image.dart';

typedef ImageProgressIndicatorBuilder =
    Widget Function(
      BuildContext context,
      double? progress,
    );

typedef ImageErrorBuilder =
    Widget Function(
      BuildContext context,
      Object error,
      VoidCallback onRetry,
    );

class AppNetworkImage extends ConsumerStatefulWidget {
  const AppNetworkImage({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
    this.headers,
    this.reloadButton = false,
    this.progressIndicatorBuilder,
    this.errorBuilder,
    this.decodeWidth,
    this.decodeHeight,
  });

  final String? url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Map<String, String>? headers;
  final bool reloadButton;
  final ImageProgressIndicatorBuilder? progressIndicatorBuilder;
  final ImageErrorBuilder? errorBuilder;

  /// Will resize the image in memory to have a certain width using [ResizeImage]
  final int? decodeWidth;

  /// Will resize the image in memory to have a certain height using [ResizeImage]
  final int? decodeHeight;

  @override
  ConsumerState<AppNetworkImage> createState() => _AppNetworkImageState();
}

class _AppNetworkImageState extends ConsumerState<AppNetworkImage> {
  // Will be used to trigger a reload.
  Key imageKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    final localUrl = widget.url;

    if (localUrl == null ||
        localUrl.isEmpty ||
        Uri.tryParse(localUrl) == null) {
      return _Error(
        height: widget.height,
        width: widget.width,
        error: 'Invalid URL: $localUrl',
        onRetry: widget.reloadButton ? handleOnRetry : null,
      );
    }

    return Image(
      key: imageKey,
      image: CachedImageProvider(localUrl, headers: widget.headers ?? const {}),
      height: widget.height,
      width: widget.width,
      fit: widget.fit,
      errorBuilder: errorBuilder,
      loadingBuilder: progressBuilder,
    );
  }

  Widget errorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    debugPrint('error: $error\n$stackTrace');

    if (widget.errorBuilder case final builder?) {
      return builder(context, error, handleOnRetry);
    }
    return _Error(
      error: error,
      height: widget.height,
      width: widget.width,
      onRetry: widget.reloadButton ? handleOnRetry : null,
    );
  }

  Widget progressBuilder(
    BuildContext context,
    Widget child,
    ImageChunkEvent? progress,
  ) {
    if (progress == null) return child;

    final progressValue =
        progress.cumulativeBytesLoaded / progress.expectedTotalBytes!;
    if (progressValue == 1.0) return child;

    if (widget.progressIndicatorBuilder case final builder?) {
      return builder(context, progressValue);
    }
    return _Loading(progressValue);
  }

  void handleOnRetry() => setState(() => imageKey = UniqueKey());
}

class _Loading extends StatelessWidget {
  const _Loading(this.progress);

  final double? progress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: CircularProgressIndicator(value: progress),
      ),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({
    required this.error,
    required this.height,
    required this.width,
    required this.onRetry,
  });

  final Object error;
  final double? height;
  final double? width;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: height,
        width: width,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            const Icon(
              Icons.broken_image_rounded,
              color: Colors.grey,
            ),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            if (onRetry != null)
              TextButton(
                onPressed: onRetry,
                child: Text(strings.generic_retry),
              ),
          ],
        ),
      ),
    );
  }
}
