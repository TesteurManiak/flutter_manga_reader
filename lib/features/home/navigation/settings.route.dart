part of 'route.dart';

class GeneralSettingsRoute extends GoRouteData with _$GeneralSettingsRoute {
  const GeneralSettingsRoute();

  static const path = 'settings/general';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GeneralSettingsView();
  }
}

class AppearanceSettingsRoute extends GoRouteData
    with _$AppearanceSettingsRoute {
  const AppearanceSettingsRoute();

  static const path = 'settings/appearance';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppearanceSettingsView();
  }
}

class BackupSettingsRoute extends GoRouteData with _$BackupSettingsRoute {
  const BackupSettingsRoute();

  static const path = 'settings/backup';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BackupSettingsView();
  }
}

class AboutSettingsRoute extends GoRouteData with _$AboutSettingsRoute {
  const AboutSettingsRoute();

  static const path = 'settings/about';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutSettingsView();
  }
}
