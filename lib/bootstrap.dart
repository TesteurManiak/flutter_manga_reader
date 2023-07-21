import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/feature_flags/controllers/feature_flag_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Add cross-flavor configuration here
  setupLogging();
  final container = ProviderContainer();

  await Future.wait<void>([
    _initializeTheme(container),
    _initializeLocale(container),
    _initializeFeatureFlags(container),
  ]);

  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: await builder(),
    ),
  );
}

Future<void> _initializeTheme(ProviderContainer container) {
  return container.read(themeControllerProvider.notifier).init();
}

Future<void> _initializeLocale(ProviderContainer container) {
  return container.read(localeControllerProvider.notifier).init();
}

Future<void> _initializeFeatureFlags(ProviderContainer container) {
  return container.read(featureFlagControllerProvider.notifier).init();
}
