import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/views/chapter_viewer_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<ChapterViewerRoute>(path: ChapterViewerRoute.path)
class ChapterViewerRoute extends GoRouteData {
  const ChapterViewerRoute({
    required this.sourceId,
    required this.chapterId,
  });

  static const path = '/chapter/:sourceId/:chapterId';

  final String sourceId;
  final int chapterId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        mangaDatasourceProvider.overrideWith((ref) {
          return ref.watch(getSourceFromIdProvider(sourceId));
        }),
      ],
      child: ChapterViewerView(chapterId: chapterId),
    );
  }
}
