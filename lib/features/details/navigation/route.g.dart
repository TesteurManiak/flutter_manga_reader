// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $detailsRoute,
    ];

RouteBase get $detailsRoute => GoRouteData.$route(
      path: '/details/:mangaId',
      factory: $DetailsRouteExtension._fromState,
    );

extension $DetailsRouteExtension on DetailsRoute {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute(
        mangaId: int.parse(state.pathParameters['mangaId']!),
        openedFromSource: _$convertMapValue(
            'opened-from-source', state.uri.queryParameters, _$boolConverter),
      );

  String get location => GoRouteData.$location(
        '/details/${Uri.encodeComponent(mangaId.toString())}',
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
