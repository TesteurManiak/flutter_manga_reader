import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<DetailsRoute>(path: DetailsRoute.path)
class DetailsRoute extends GoRouteData {
  const DetailsRoute({
    required this.mangaId,
    this.openedFromSource,
  });

  static const path = '/details/:mangaId';

  final String mangaId;
  final bool? openedFromSource;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsView(
      mangaId: mangaId,
      openedFromSource: openedFromSource ?? false,
    );
  }
}
