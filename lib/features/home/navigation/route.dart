import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/home/views/home_view.dart';
import 'package:flutter_manga_reader/features/search/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/navigation/route.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
  routes: <TypedGoRoute>[
    TypedGoRoute<BrowseSourceRoute>(path: BrowseSourceRoute.path),
    TypedGoRoute<GeneralSettingsRoute>(path: GeneralSettingsRoute.path),
    TypedGoRoute<AppearanceSettingsRoute>(path: AppearanceSettingsRoute.path),
    TypedGoRoute<AboutSettingsRoute>(path: AboutSettingsRoute.path),
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
