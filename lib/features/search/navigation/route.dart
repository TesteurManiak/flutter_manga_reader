import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/search/views/search_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BrowseSourceRoute extends GoRouteData {
  const BrowseSourceRoute({
    required this.sourceId,
  });

  final String sourceId;

  static const path = 'browse/:sourceId';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        mangaDatasourceProvider.overrideWith((ref) {
          return ref.watch(getSourceFromIdProvider(sourceId));
        }),
      ],
      child: const SearchView(),
    );
  }
}
