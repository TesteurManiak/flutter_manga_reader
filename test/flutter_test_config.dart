// isRunningInCi is actually not define so it might not be enabled in PlatformGoldensConfig
// ignore_for_file: avoid_redundant_argument_values

import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter_manga_reader/design_system/design_system.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: AppTheme.light(),
      platformGoldensConfig: const PlatformGoldensConfig(
        enabled: !isRunningInCi,
      ),
    ),
    run: testMain,
  );
}
