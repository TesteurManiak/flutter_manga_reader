import 'package:flutter/cupertino.dart';
import 'package:flutter_manga_reader/core/widgets/source_provider_scope.dart';
import 'package:flutter_manga_reader/features/details/views/cover_viewer_view.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:flutter_manga_reader/features/details/views/manga_webview.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/home/navigation/search.route.dart';
import 'package:go_router/go_router.dart';

part 'details.route.g.dart';

abstract class DetailsRoute extends GoRouteData {
  const DetailsRoute();

  String get sourceId;
  int get mangaId;

  bool get openedFromSource => false;

  static void goTo(
    BuildContext context, {
    required String sourceId,
    required int mangaId,
  }) {
    final navigatorState = GoRouterState.of(context);

    final isOnSourceRoute = navigatorState.matchedLocation.contains(
      BrowseSourceRoute(sourceId: sourceId).location,
    );

    if (isOnSourceRoute) {
      SourceDetailsRoute(mangaId: mangaId, sourceId: sourceId).go(context);
      return;
    }

    LibraryDetailsRoute(mangaId: mangaId, sourceId: sourceId).go(context);
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SourceProviderScope(
      sourceId: sourceId,
      child: DetailsView(mangaId: mangaId, openedFromSource: openedFromSource),
    );
  }
}

class LibraryDetailsRoute extends DetailsRoute with $LibraryDetailsRoute {
  const LibraryDetailsRoute({required this.sourceId, required this.mangaId});

  static const path = 'details/:sourceId/:mangaId';

  @override
  final String sourceId;

  @override
  final int mangaId;
}

class SourceDetailsRoute extends DetailsRoute with $SourceDetailsRoute {
  const SourceDetailsRoute({required this.sourceId, required this.mangaId});

  static const path = 'source-details/:mangaId';

  @override
  final String sourceId;

  @override
  final int mangaId;

  @override
  bool get openedFromSource => true;
}

@TypedGoRoute<CoverViewerRoute>(path: CoverViewerRoute.path)
class CoverViewerRoute extends GoRouteData with $CoverViewerRoute {
  const CoverViewerRoute({required this.sourceId, required this.coverUrl});

  final String sourceId;
  final String coverUrl;

  static const path = '/cover/:sourceId/:coverUrl';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      opaque: false,
      fullscreenDialog: true,
      transitionsBuilder: (_, _, _, child) => child,
      child: SourceProviderScope(
        sourceId: sourceId,
        child: CoverViewerView(coverUrl),
      ),
    );
  }
}

@TypedGoRoute<MangaWebviewRoute>(path: MangaWebviewRoute.path)
class MangaWebviewRoute extends GoRouteData with $MangaWebviewRoute {
  const MangaWebviewRoute({required this.sourceId, required this.mangaId});

  final String sourceId;
  final int mangaId;

  static const path = '/webview/:sourceId/:mangaId';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      child: SourceProviderScope(
        sourceId: sourceId,
        child: MangaWebview(mangaId),
      ),
    );
  }
}
