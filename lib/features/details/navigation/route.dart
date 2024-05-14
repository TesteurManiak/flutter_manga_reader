import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/source_provider_scope.dart';
import 'package:flutter_manga_reader/features/details/views/cover_viewer_view.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

abstract class DetailsRoute extends GoRouteData {
  const DetailsRoute();

  String get sourceId;
  int get mangaId;

  bool get openedFromSource => false;

  static void go(
    BuildContext context, {
    required String sourceId,
    required int mangaId,
  }) {
    final navigatorState = GoRouterState.of(context);

    final sourceRoute = SourceDetailsRoute(
      mangaId: mangaId,
      sourceId: sourceId,
    );
    final isOnSourceRoute = navigatorState.matchedLocation.contains(
      sourceRoute.location,
    );

    if (isOnSourceRoute) {
      sourceRoute.go(context);
      return;
    }

    LibraryDetailsRoute(mangaId: mangaId, sourceId: sourceId).go(context);
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SourceProviderScope(
      sourceId: sourceId,
      child: DetailsView(
        mangaId: mangaId,
        openedFromSource: openedFromSource,
      ),
    );
  }
}

class LibraryDetailsRoute extends DetailsRoute {
  const LibraryDetailsRoute({
    required this.sourceId,
    required this.mangaId,
  });

  static const path = 'details/:sourceId/:mangaId';

  @override
  final String sourceId;

  @override
  final int mangaId;
}

class SourceDetailsRoute extends DetailsRoute {
  const SourceDetailsRoute({
    required this.sourceId,
    required this.mangaId,
  });

  static const path = 'source-details/:mangaId';

  @override
  final String sourceId;

  @override
  final int mangaId;

  @override
  bool get openedFromSource => true;
}

@TypedGoRoute<CoverViewerRoute>(path: CoverViewerRoute.path)
class CoverViewerRoute extends GoRouteData {
  const CoverViewerRoute({
    required this.sourceId,
    required this.coverUrl,
  });

  final String sourceId;
  final String coverUrl;

  static const path = '/cover/:sourceId/:coverUrl';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      opaque: false,
      fullscreenDialog: true,
      transitionsBuilder: (_, __, ___, child) => child,
      child: SourceProviderScope(
        sourceId: sourceId,
        child: CoverViewerView(coverUrl),
      ),
    );
  }
}
