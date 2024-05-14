// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'details/:sourceId/:mangaId',
          factory: $LibraryDetailsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'chapter/:chapterId',
              factory: $LibraryChapterViewerRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'browse/:sourceId',
          factory: $BrowseSourceRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'source-details/:mangaId',
              factory: $SourceDetailsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'chapter/:chapterId',
                  factory: $SourceChapterViewerRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'settings/general',
          factory: $GeneralSettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'settings/appearance',
          factory: $AppearanceSettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'settings/about',
          factory: $AboutSettingsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LibraryDetailsRouteExtension on LibraryDetailsRoute {
  static LibraryDetailsRoute _fromState(GoRouterState state) =>
      LibraryDetailsRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(sourceId)}/${Uri.encodeComponent(mangaId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LibraryChapterViewerRouteExtension on LibraryChapterViewerRoute {
  static LibraryChapterViewerRoute _fromState(GoRouterState state) =>
      LibraryChapterViewerRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
        chapterId: int.parse(state.pathParameters['chapterId']!),
        initialPage: _$convertMapValue(
            'initial-page', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(sourceId)}/${Uri.encodeComponent(mangaId.toString())}/chapter/${Uri.encodeComponent(chapterId.toString())}',
        queryParams: {
          if (initialPage != null) 'initial-page': initialPage!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BrowseSourceRouteExtension on BrowseSourceRoute {
  static BrowseSourceRoute _fromState(GoRouterState state) => BrowseSourceRoute(
        sourceId: state.pathParameters['sourceId']!,
      );

  String get location => GoRouteData.$location(
        '/browse/${Uri.encodeComponent(sourceId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SourceDetailsRouteExtension on SourceDetailsRoute {
  static SourceDetailsRoute _fromState(GoRouterState state) =>
      SourceDetailsRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
      );

  String get location => GoRouteData.$location(
        '/browse/${Uri.encodeComponent(sourceId)}/source-details/${Uri.encodeComponent(mangaId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SourceChapterViewerRouteExtension on SourceChapterViewerRoute {
  static SourceChapterViewerRoute _fromState(GoRouterState state) =>
      SourceChapterViewerRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
        chapterId: int.parse(state.pathParameters['chapterId']!),
        initialPage: _$convertMapValue(
            'initial-page', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/browse/${Uri.encodeComponent(sourceId)}/source-details/${Uri.encodeComponent(mangaId.toString())}/chapter/${Uri.encodeComponent(chapterId.toString())}',
        queryParams: {
          if (initialPage != null) 'initial-page': initialPage!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GeneralSettingsRouteExtension on GeneralSettingsRoute {
  static GeneralSettingsRoute _fromState(GoRouterState state) =>
      const GeneralSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/general',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AppearanceSettingsRouteExtension on AppearanceSettingsRoute {
  static AppearanceSettingsRoute _fromState(GoRouterState state) =>
      const AppearanceSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/appearance',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutSettingsRouteExtension on AboutSettingsRoute {
  static AboutSettingsRoute _fromState(GoRouterState state) =>
      const AboutSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
