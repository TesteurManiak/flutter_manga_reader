import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/details/navigation/route.dart'
    as details;
import 'package:flutter_manga_reader/features/home/navigation/route.dart'
    as home;
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter({bool debugLogDiagnostics = kDebugMode}) {
  return GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: debugLogDiagnostics,
    routes: [
      ...home.$appRoutes,
      ...details.$appRoutes,
    ],
  );
}
