import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    // Override the mangaDatasourceProvider to use the sourceId from the route.
    return ProviderScope(
      overrides: [
        mangaDatasourceProvider.overrideWith((ref) {
          return ref.watch(getSourceFromIdProvider(sourceId));
        }),
      ],
      child: DetailsView(
        mangaId: mangaId,
        openedFromSource: openedFromSource ?? false,
      ),
    );
  }
}
