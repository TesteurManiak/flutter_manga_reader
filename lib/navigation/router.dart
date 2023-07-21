import 'package:flutter/foundation.dart';
import 'package:flutter_manga_reader/features/restore_data/views/restore_data_view.dart';
import 'package:go_router/go_router.dart';

GoRouter createRouter({bool debugLogDiagnostics = kDebugMode}) {
  return GoRouter(
    debugLogDiagnostics: debugLogDiagnostics,
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const RestoreDataView(),
      ),
    ],
  );
}
