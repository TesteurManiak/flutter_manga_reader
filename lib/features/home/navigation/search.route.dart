part of 'route.dart';

class BrowseSourceRoute extends GoRouteData with _$BrowseSourceRoute {
  const BrowseSourceRoute({required this.sourceId});

  final String sourceId;

  static const path = 'browse/:sourceId';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SourceProviderScope(sourceId: sourceId, child: const SearchView());
  }
}
