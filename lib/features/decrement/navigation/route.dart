import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/decrement/views/decrement_view.dart';
import 'package:go_router/go_router.dart';

class DecrementRoute extends GoRouteData {
  const DecrementRoute();

  static const path = 'decrement';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DecrementView();
  }
}
