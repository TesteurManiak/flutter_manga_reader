import 'package:flutter/foundation.dart';
import 'package:flutter_manga_reader/env.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart' as home;
import 'package:go_router/go_router.dart';

GoRouter createRouter({bool debugLogDiagnostics = kDebugMode}) {
  return GoRouter(
    debugLogDiagnostics: debugLogDiagnostics,
    initialLocation: home.HomeRoute.path,
    initialExtra: env.title,
    routes: [
      ...home.$appRoutes,
    ],
  );
}
