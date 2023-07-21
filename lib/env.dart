import 'package:flutter/material.dart';

BuildEnvironment get env => BuildEnvironment.instance;

class BuildEnvironment {
  const BuildEnvironment._({
    required this.flavor,
    required this.title,
  });

  // Add your environments here
  final BuildFlavor flavor;
  final String title;

  static BuildEnvironment get instance {
    if (!_initialized) {
      throw Exception('BuildEnvironment has not been initialized.');
    }

    return _instance;
  }

  static late BuildEnvironment _instance;

  static bool _initialized = false;

  static void init({
    required BuildFlavor flavor,
    required String title,
  }) {
    // Add your environment initialization here
    _instance = BuildEnvironment._(
      flavor: flavor,
      title: title,
    );
    _initialized = true;
  }

  @visibleForTesting
  static set instance(BuildEnvironment value) => _instance = value;
}

enum BuildFlavor { dev, staging, prod }
