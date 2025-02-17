import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:flutter_manga_reader/core/providers/theme_controller.dart';
import 'package:flutter_manga_reader/core/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  // Add cross-flavor configuration here
  setupLogging();
  final container = ProviderContainer();

  await Future.wait<void>([
    container.read(themeControllerProvider.notifier).init(),
    container.read(localeControllerProvider.notifier).init(),
  ]);

  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(
    UncontrolledProviderScope(container: container, child: await builder()),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (_, _, _) => true;
  }
}
