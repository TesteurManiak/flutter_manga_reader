import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/views/chapter_viewer_view.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<ChapterViewerRoute>(path: ChapterViewerRoute.path)
class ChapterViewerRoute extends GoRouteData {
  const ChapterViewerRoute({
    required this.chapterId,
  });

  static const path = '/chapter/:chapterId';

  final int chapterId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChapterViewerView(chapterId: chapterId);
  }
}
