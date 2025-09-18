// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute];

RouteBase get $homeRoute => GoRouteData.$route(
  path: '/',
  factory: $HomeRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'details/:sourceId/:mangaId',
      factory: $LibraryDetailsRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'chapter/:chapterId',
          factory: $LibraryChapterViewerRoute._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: 'browse/:sourceId',
      factory: $BrowseSourceRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'source-details/:mangaId',
          factory: $SourceDetailsRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: 'chapter/:chapterId',
              factory: $SourceChapterViewerRoute._fromState,
            ),
          ],
        ),
      ],
    ),
    GoRouteData.$route(
      path: 'settings/general',
      factory: $GeneralSettingsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'settings/appearance',
      factory: $AppearanceSettingsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'settings/backup',
      factory: $BackupSettingsRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'settings/about',
      factory: $AboutSettingsRoute._fromState,
    ),
  ],
);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LibraryDetailsRoute on GoRouteData {
  static LibraryDetailsRoute _fromState(GoRouterState state) =>
      LibraryDetailsRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
      );

  LibraryDetailsRoute get _self => this as LibraryDetailsRoute;

  @override
  String get location => GoRouteData.$location(
    '/details/${Uri.encodeComponent(_self.sourceId)}/${Uri.encodeComponent(_self.mangaId.toString())}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LibraryChapterViewerRoute on GoRouteData {
  static LibraryChapterViewerRoute _fromState(GoRouterState state) =>
      LibraryChapterViewerRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
        chapterId: int.parse(state.pathParameters['chapterId']!),
        initialPage: _$convertMapValue(
          'initial-page',
          state.uri.queryParameters,
          int.tryParse,
        ),
      );

  LibraryChapterViewerRoute get _self => this as LibraryChapterViewerRoute;

  @override
  String get location => GoRouteData.$location(
    '/details/${Uri.encodeComponent(_self.sourceId)}/${Uri.encodeComponent(_self.mangaId.toString())}/chapter/${Uri.encodeComponent(_self.chapterId.toString())}',
    queryParams: {
      if (_self.initialPage != null)
        'initial-page': _self.initialPage!.toString(),
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $BrowseSourceRoute on GoRouteData {
  static BrowseSourceRoute _fromState(GoRouterState state) =>
      BrowseSourceRoute(sourceId: state.pathParameters['sourceId']!);

  BrowseSourceRoute get _self => this as BrowseSourceRoute;

  @override
  String get location =>
      GoRouteData.$location('/browse/${Uri.encodeComponent(_self.sourceId)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SourceDetailsRoute on GoRouteData {
  static SourceDetailsRoute _fromState(GoRouterState state) =>
      SourceDetailsRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
      );

  SourceDetailsRoute get _self => this as SourceDetailsRoute;

  @override
  String get location => GoRouteData.$location(
    '/browse/${Uri.encodeComponent(_self.sourceId)}/source-details/${Uri.encodeComponent(_self.mangaId.toString())}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SourceChapterViewerRoute on GoRouteData {
  static SourceChapterViewerRoute _fromState(GoRouterState state) =>
      SourceChapterViewerRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
        chapterId: int.parse(state.pathParameters['chapterId']!),
        initialPage: _$convertMapValue(
          'initial-page',
          state.uri.queryParameters,
          int.tryParse,
        ),
      );

  SourceChapterViewerRoute get _self => this as SourceChapterViewerRoute;

  @override
  String get location => GoRouteData.$location(
    '/browse/${Uri.encodeComponent(_self.sourceId)}/source-details/${Uri.encodeComponent(_self.mangaId.toString())}/chapter/${Uri.encodeComponent(_self.chapterId.toString())}',
    queryParams: {
      if (_self.initialPage != null)
        'initial-page': _self.initialPage!.toString(),
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $GeneralSettingsRoute on GoRouteData {
  static GeneralSettingsRoute _fromState(GoRouterState state) =>
      const GeneralSettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings/general');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AppearanceSettingsRoute on GoRouteData {
  static AppearanceSettingsRoute _fromState(GoRouterState state) =>
      const AppearanceSettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings/appearance');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $BackupSettingsRoute on GoRouteData {
  static BackupSettingsRoute _fromState(GoRouterState state) =>
      const BackupSettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings/backup');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AboutSettingsRoute on GoRouteData {
  static AboutSettingsRoute _fromState(GoRouterState state) =>
      const AboutSettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings/about');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
