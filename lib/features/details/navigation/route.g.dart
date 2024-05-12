// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $detailsRoute,
      $coverViewerRoute,
    ];

RouteBase get $detailsRoute => GoRouteData.$route(
      path: '/details/:sourceId/:mangaId',
      factory: $DetailsRouteExtension._fromState,
    );

extension $DetailsRouteExtension on DetailsRoute {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute(
        sourceId: state.pathParameters['sourceId']!,
        mangaId: int.parse(state.pathParameters['mangaId']!),
        openedFromSource: _$convertMapValue(
            'opened-from-source', state.uri.queryParameters, _$boolConverter),
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(sourceId)}/${Uri.encodeComponent(mangaId.toString())}',
        queryParams: {
          if (openedFromSource != null)
            'opened-from-source': openedFromSource!.toString(),
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

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

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
