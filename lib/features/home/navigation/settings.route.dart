import 'package:flutter/widgets.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/views/about_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/appearance_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/backup_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/general_settings_view.dart';
import 'package:go_router/go_router.dart';

class GeneralSettingsRoute extends GoRouteData with $GeneralSettingsRoute {
  const GeneralSettingsRoute();

  static const path = 'settings/general';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GeneralSettingsView();
  }
}

class AppearanceSettingsRoute extends GoRouteData
    with $AppearanceSettingsRoute {
  const AppearanceSettingsRoute();

  static const path = 'settings/appearance';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppearanceSettingsView();
  }
}

class BackupSettingsRoute extends GoRouteData with $BackupSettingsRoute {
  const BackupSettingsRoute();

  static const path = 'settings/backup';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BackupSettingsView();
  }
}

class AboutSettingsRoute extends GoRouteData with $AboutSettingsRoute {
  const AboutSettingsRoute();

  static const path = 'settings/about';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutSettingsView();
  }
}
