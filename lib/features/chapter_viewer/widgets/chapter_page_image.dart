import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/chapter_extensions.dart';
import 'package:flutter_manga_reader/core/providers/directories.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterPageImage extends ConsumerWidget {
  const ChapterPageImage({
    required this.chapter,
    required this.page,
    this.fit,
    super.key,
  });

  final Chapter chapter;
  final ChapterPage page;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (chapter.downloaded) {
      return _LocaleImage(chapter: chapter, page: page, fit: fit);
    }

    final source = ref.watch(scopedMangaDatasourceProvider);

    return AppNetworkImage(
      url: page.imageUrl,
      fit: fit,
      headers: source.getHeaders(),
      progressIndicatorBuilder: (_, progress) => _LoadingPlaceholder(progress),
      errorBuilder: (_, _, e, onRetry) => _Error(error: e, onRetry: onRetry),
    );
  }
}

class _LocaleImage extends ConsumerWidget {
  const _LocaleImage({
    required this.chapter,
    required this.page,
    required this.fit,
  });

  final Chapter chapter;
  final ChapterPage page;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documentsDir = ref.watch(applicationDocumentsDirectoryProvider);
    return documentsDir.when(
      data: (baseDir) {
        final file = File(
          page.getFullLocalPath(chapter.getFullLocalPath(baseDir)),
        );
        return Image.file(
          file,
          fit: fit,
          errorBuilder: (_, e, _) => _Error(error: e),
        );
      },
      error: (e, _) => _Error(error: e),
      loading: () => const _LoadingPlaceholder(null),
    );
  }
}

class _LoadingPlaceholder extends StatelessWidget {
  const _LoadingPlaceholder(this.progress);

  final double? progress;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: CircularProgressIndicator(value: progress),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({required this.error, this.onRetry});

  final Object error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final strings = context.strings;

    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,
        children: [
          const Icon(Icons.broken_image_rounded, color: Colors.grey),
          Text(
            error.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
          ),
          if (onRetry != null)
            TextButton(onPressed: onRetry, child: Text(strings.generic_retry)),
        ],
      ),
    );
  }
}
