import 'package:flutter/widgets.dart';
import 'package:flutter_manga_reader/core/widgets/source_provider_scope.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/search/views/search_view.dart';
import 'package:go_router/go_router.dart';

class BrowseSourceRoute extends GoRouteData with $BrowseSourceRoute {
  const BrowseSourceRoute({required this.sourceId});

  final String sourceId;

  static const path = 'browse/:sourceId';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SourceProviderScope(sourceId: sourceId, child: const SearchView());
  }
}
