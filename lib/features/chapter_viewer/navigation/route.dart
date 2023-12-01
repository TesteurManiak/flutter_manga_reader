import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/views/chapter_viewer_view.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<ChapterViewerRoute>(path: ChapterViewerRoute.path)
class ChapterViewerRoute extends GoRouteData {
  const ChapterViewerRoute({
    required this.sourceId,
    required this.mangaId,
    required this.chapterId,
    this.initialPage,
  });

  static const path = '/chapter/:sourceId/:mangaId/:chapterId';

  final String sourceId;
  final int mangaId;
  final int chapterId;
  final int? initialPage;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SourceProviderScope(
      sourceId: sourceId,
      child: ChapterViewerView(
        mangaId: mangaId,
        chapterId: chapterId,
        initialPage: initialPage,
      ),
    );
  }
}
