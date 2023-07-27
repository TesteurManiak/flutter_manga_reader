import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/details/navigation/route.dart';
import 'package:flutter_manga_reader/features/home/views/home_view.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
  routes: [
    TypedGoRoute<DetailsRoute>(path: DetailsRoute.path),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
