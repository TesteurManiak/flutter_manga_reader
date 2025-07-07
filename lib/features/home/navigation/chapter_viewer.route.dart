part of 'route.dart';

abstract class ChapterViewerRoute extends GoRouteData {
  const ChapterViewerRoute();

  static const path = 'chapter/:chapterId';

  String get sourceId;
  int get mangaId;
  int get chapterId;
  int? get initialPage;

  static void goTo(
    BuildContext context, {
    required String sourceId,
    required int mangaId,
    required int chapterId,
    int? initialPage,
  }) {
    final navigatorState = GoRouterState.of(context);
    final isOnSourceRoute = navigatorState.matchedLocation.contains(
      SourceDetailsRoute(sourceId: sourceId, mangaId: mangaId).location,
    );

    if (isOnSourceRoute) {
      return SourceChapterViewerRoute(
        mangaId: mangaId,
        sourceId: sourceId,
        chapterId: chapterId,
        initialPage: initialPage,
      ).go(context);
    }

    return LibraryChapterViewerRoute(
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

class LibraryChapterViewerRoute extends ChapterViewerRoute
    with _$LibraryChapterViewerRoute {
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

class SourceChapterViewerRoute extends ChapterViewerRoute
    with _$SourceChapterViewerRoute {
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
