import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/details/views/cover_viewer_view.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<DetailsRoute>(path: DetailsRoute.path)
class DetailsRoute extends GoRouteData {
  const DetailsRoute({
    required this.sourceId,
    required this.mangaId,
    this.openedFromSource,
  });

  static const path = '/details/:sourceId/:mangaId';

  final String sourceId;
  final int mangaId;
  final bool? openedFromSource;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SourceProviderScope(
      sourceId: sourceId,
      child: DetailsView(
        mangaId: mangaId,
        openedFromSource: openedFromSource ?? false,
      ),
    );
  }
}

@TypedGoRoute<CoverViewerRoute>(path: CoverViewerRoute.path)
class CoverViewerRoute extends GoRouteData {
  const CoverViewerRoute({
    required this.coverUrl,
  });

  final String coverUrl;

  static const path = '/cover/:coverUrl';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      opaque: false,
      fullscreenDialog: true,
      transitionsBuilder: (_, __, ___, child) => child,
      child: CoverViewerView(coverUrl),
    );
  }
}
