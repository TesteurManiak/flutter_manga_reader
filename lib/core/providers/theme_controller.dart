import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/theme_mode_extensions.dart';
import 'package:flutter_manga_reader/design_system/theme_data/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@riverpod
ThemeMode defaultThemeMode(DefaultThemeModeRef ref) => ThemeMode.system;

@riverpod
ThemeData lightTheme(LightThemeRef ref) => AppTheme.light();

@riverpod
ThemeData darkTheme(DarkThemeRef ref) => AppTheme.dark();

@riverpod
Brightness platformBrightness(PlatformBrightnessRef ref) {
  return PlatformDispatcher.instance.platformBrightness;
}

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  @override
  ThemeMode build() {
    return ref.read(defaultThemeModeProvider);
  }

  /// Initialize the theme mode.
  ///
  /// Used to load something if the theme mode is not set by the device settings
  /// (e.g: from the local storage).
  Future<void> init() {
    // Replace this with your own logic.
    return Future.value();
  }

  /// Used to toggle between light and dark theme modes.
  Future<void> toggle() {
    final platformBrightness = ref.read(platformBrightnessProvider);
    final newMode =
        state.isDark(platformBrightness) ? ThemeMode.light : ThemeMode.dark;

    return setThemeMode(newMode);
  }

  Future<void> setThemeMode(ThemeMode mode) {
    if (mode == state) return Future.value();

    // You can save the new mode to the local storage here.

    state = mode;
    return Future.value();
  }

  /// Used to reset the theme mode to the default theme mode.
  Future<void> reset() {
    return setThemeMode(ref.read(defaultThemeModeProvider));
  }
}
