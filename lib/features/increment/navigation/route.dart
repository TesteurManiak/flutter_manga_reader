import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/increment/views/increment_view.dart';
import 'package:go_router/go_router.dart';

class IncrementRoute extends GoRouteData {
  const IncrementRoute();

  static const path = 'increment';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const IncrementView();
  }
}
