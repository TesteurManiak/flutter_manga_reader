import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter({bool debugLogDiagnostics = kDebugMode}) {
  return GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: debugLogDiagnostics,
    routes: $appRoutes,
  );
}
