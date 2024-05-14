// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $coverViewerRoute,
    ];

RouteBase get $coverViewerRoute => GoRouteData.$route(
      path: '/cover/:sourceId/:coverUrl',
      factory: $CoverViewerRouteExtension._fromState,
    );

extension $CoverViewerRouteExtension on CoverViewerRoute {
  static CoverViewerRoute _fromState(GoRouterState state) => CoverViewerRoute(
        sourceId: state.pathParameters['sourceId']!,
        coverUrl: state.pathParameters['coverUrl']!,
      );

  String get location => GoRouteData.$location(
        '/cover/${Uri.encodeComponent(sourceId)}/${Uri.encodeComponent(coverUrl)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
