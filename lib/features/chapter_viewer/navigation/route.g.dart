// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $chapterViewerRoute,
    ];

RouteBase get $chapterViewerRoute => GoRouteData.$route(
      path: '/chapter/:chapterId',
      factory: $ChapterViewerRouteExtension._fromState,
    );

extension $ChapterViewerRouteExtension on ChapterViewerRoute {
  static ChapterViewerRoute _fromState(GoRouterState state) =>
      ChapterViewerRoute(
        chapterId: int.parse(state.pathParameters['chapterId']!),
      );

  String get location => GoRouteData.$location(
        '/chapter/${Uri.encodeComponent(chapterId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
