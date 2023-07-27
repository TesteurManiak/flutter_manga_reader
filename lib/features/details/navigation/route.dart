import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:go_router/go_router.dart';

class DetailsRoute extends GoRouteData {
  const DetailsRoute({required this.mangaId});

  static const path = 'details/:mangaId';

  final String mangaId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsView(mangaId: mangaId);
  }
}
