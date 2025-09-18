// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$coverViewerRoute, $mangaWebviewRoute];

RouteBase get $coverViewerRoute => GoRouteData.$route(
  path: '/cover/:sourceId/:coverUrl',
  factory: $CoverViewerRoute._fromState,
);

mixin $CoverViewerRoute on GoRouteData {
  static CoverViewerRoute _fromState(GoRouterState state) => CoverViewerRoute(
    sourceId: state.pathParameters['sourceId']!,
    coverUrl: state.pathParameters['coverUrl']!,
  );

  CoverViewerRoute get _self => this as CoverViewerRoute;

  @override
  String get location => GoRouteData.$location(
    '/cover/${Uri.encodeComponent(_self.sourceId)}/${Uri.encodeComponent(_self.coverUrl)}',
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

RouteBase get $mangaWebviewRoute => GoRouteData.$route(
  path: '/webview/:sourceId/:mangaId',
  factory: $MangaWebviewRoute._fromState,
);

mixin $MangaWebviewRoute on GoRouteData {
  static MangaWebviewRoute _fromState(GoRouterState state) => MangaWebviewRoute(
    sourceId: state.pathParameters['sourceId']!,
    mangaId: int.parse(state.pathParameters['mangaId']!),
  );

  MangaWebviewRoute get _self => this as MangaWebviewRoute;

  @override
  String get location => GoRouteData.$location(
    '/webview/${Uri.encodeComponent(_self.sourceId)}/${Uri.encodeComponent(_self.mangaId.toString())}',
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
