import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/separated_column.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterPageImage extends StatefulWidget {
  const ChapterPageImage({
    required this.page,
    this.fit,
    super.key,
  });

  final ChapterPage page;
  final BoxFit? fit;

  @override
  State<ChapterPageImage> createState() => _ChapterPageImageState();
}

class _ChapterPageImageState extends State<ChapterPageImage> {
  Key imageKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return AppNetworkImage(
      key: imageKey,
      url: widget.page.imageUrl,
      fit: widget.fit,
      progressIndicatorBuilder: (_, progress) {
        return _LoadingPlaceholder(progress);
      },
      errorBuilder: (_, __, ___) {
        return _Error(onRetry: () => setState(() => imageKey = UniqueKey()));
      },
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
  const _Error({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final strings = context.strings;

    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        separator: const SizedBox(height: 32),
        children: [
          const Icon(
            Icons.broken_image_rounded,
            color: Colors.grey,
          ),
          TextButton(
            onPressed: onRetry,
            child: Text(strings.generic_retry),
          ),
        ],
      ),
    );
  }
}
