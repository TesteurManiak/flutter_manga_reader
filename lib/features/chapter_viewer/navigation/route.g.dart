// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $chapterViewerRoute,
    ];

RouteBase get $chapterViewerRoute => GoRouteData.$route(
      path: '/chapter/:sourceId/:chapterId',
      factory: $ChapterViewerRouteExtension._fromState,
    );

extension $ChapterViewerRouteExtension on ChapterViewerRoute {
  static ChapterViewerRoute _fromState(GoRouterState state) =>
      ChapterViewerRoute(
        sourceId: state.pathParameters['sourceId']!,
        chapterId: int.parse(state.pathParameters['chapterId']!),
        initialPage: _$convertMapValue(
            'initial-page', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/chapter/${Uri.encodeComponent(sourceId)}/${Uri.encodeComponent(chapterId.toString())}',
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

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
