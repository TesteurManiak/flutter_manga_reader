import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/settings/views/about_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/appearance_settings_view.dart';
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

class AppearanceSettingsRoute extends GoRouteData {
  const AppearanceSettingsRoute();

  static const path = 'settings/appearance';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppearanceSettingsView();
  }
}

class BackupSettingsRoute extends GoRouteData {
  const BackupSettingsRoute();

  static const path = 'settings/backup';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO(Guillaume): implement backup settings view
    return Scaffold(appBar: AppBar());
  }
}

class AboutSettingsRoute extends GoRouteData {
  const AboutSettingsRoute();

  static const path = 'settings/about';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutSettingsView();
  }
}
