import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/source_provider_scope.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/views/chapter_viewer_view.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:go_router/go_router.dart';

abstract class ChapterViewerRoute extends GoRouteData {
  const ChapterViewerRoute();

  static const path = 'chapter/:chapterId';

  String get sourceId;
  int get mangaId;
  int get chapterId;
  int? get initialPage;

  static void go(
    BuildContext context, {
    required String sourceId,
    required int mangaId,
    required int chapterId,
    int? initialPage,
  }) {
    final navigatorState = GoRouterState.of(context);
    final sourceRoute = SourceChapterViewerRoute(
      mangaId: mangaId,
      sourceId: sourceId,
      chapterId: chapterId,
      initialPage: initialPage,
    );
    final isOnSourceRoute = navigatorState.matchedLocation.contains(
      sourceRoute.location,
    );

    if (isOnSourceRoute) {
      sourceRoute.go(context);
      return;
    }

    LibraryChapterViewerRoute(
      mangaId: mangaId,
      sourceId: sourceId,
      chapterId: chapterId,
      initialPage: initialPage,
    ).go(context);
  }

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

class LibraryChapterViewerRoute extends ChapterViewerRoute {
  const LibraryChapterViewerRoute({
    required this.sourceId,
    required this.mangaId,
    required this.chapterId,
    this.initialPage,
  });

  @override
  final String sourceId;

  @override
  final int mangaId;

  @override
  final int chapterId;

  @override
  final int? initialPage;
}

class SourceChapterViewerRoute extends ChapterViewerRoute {
  const SourceChapterViewerRoute({
    required this.sourceId,
    required this.mangaId,
    required this.chapterId,
    this.initialPage,
  });

  @override
  final String sourceId;

  @override
  final int mangaId;

  @override
  final int chapterId;

  @override
  final int? initialPage;
}
