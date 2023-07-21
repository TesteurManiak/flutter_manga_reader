import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/settings/views/settings_view.dart';
import 'package:go_router/go_router.dart';

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static const path = 'settings';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsView();
  }
}
