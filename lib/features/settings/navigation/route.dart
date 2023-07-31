import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/settings/views/general_settings_view.dart';
import 'package:go_router/go_router.dart';

class GeneralSettingsRoute extends GoRouteData {
  const GeneralSettingsRoute();

  static const path = 'settings/general';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GeneralSettingsView();
  }
}
