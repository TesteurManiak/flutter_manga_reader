import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_viewer_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChapterViewerAppBar extends ConsumerWidget with AppBarSizeMixin {
  const ChapterViewerAppBar(
    this.chapterId, {
    super.key,
  });

  final int chapterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapterTitle = ref.watch(
      chapterViewerControllerProvider(chapterId).select(
        (s) => switch (s) {
          ChapterViewerLoaded(:final chapter) => chapter.name,
          _ => null,
        },
      ),
    );

    return SlidablePreferredSize(
      direction: SlideDirection.up,
      child: AppBar(
        title: Text.rich(
          TextSpan(text: chapterTitle),
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.bookmark_outline),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.public),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
