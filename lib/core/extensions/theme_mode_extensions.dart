import 'package:flutter/material.dart';

extension ThemeModeExtensions on ThemeMode {
  /// Returns whether this theme mode is dark.
  ///
  /// [platformBrightness] is required to determine whether [ThemeMode.system]
  /// is dark or light.
  bool isDark(Brightness platformBrightness) {
    return switch (this) {
      ThemeMode.system => platformBrightness == Brightness.dark,
      ThemeMode.light => false,
      ThemeMode.dark => true,
    };
  }
}
