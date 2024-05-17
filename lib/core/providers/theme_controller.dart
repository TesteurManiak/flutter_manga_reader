import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/theme_mode_extensions.dart';
import 'package:flutter_manga_reader/core/providers/shared_prefs.dart';
import 'package:flutter_manga_reader/design_system/theme_data/theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.freezed.dart';
part 'theme_controller.g.dart';

@riverpod
ThemeMode defaultThemeMode(DefaultThemeModeRef ref) => ThemeMode.system;

@riverpod
ThemeData lightTheme(LightThemeRef ref) => AppTheme.light();

@riverpod
ThemeData darkTheme(DarkThemeRef ref) {
  return AppTheme.dark(pureDark: ref.watch(pureDarkModeStateProvider));
}

@riverpod
Brightness platformBrightness(PlatformBrightnessRef ref) {
  return PlatformDispatcher.instance.platformBrightness;
}

@riverpod
ThemeMode appThemeMode(AppThemeModeRef ref) {
  return ref.watch(themeControllerProvider.select((s) => s.mode));
}

@riverpod
bool pureDarkModeState(PureDarkModeStateRef ref) {
  return ref.watch(themeControllerProvider.select((s) => s.pureDarkMode));
}

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  static const themeKey = 'theme_mode';
  static const pureDarkModeKey = 'pure_dark_theme';

  @override
  ThemeState build() {
    return ThemeState(mode: ref.read(defaultThemeModeProvider));
  }

  /// Initialize the theme mode.
  ///
  /// Used to load something if the theme mode is not set by the device settings
  /// (e.g: from the local storage).
  Future<void> init() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    final themeModeIndex = prefs.getInt(themeKey) ?? ThemeMode.system.index;
    final themeMode = ThemeMode.values[themeModeIndex];
    final pureDarkMode = prefs.getBool(pureDarkModeKey) ?? false;

    final (hasSetTheme, hasSetPureDarkMode) =
        await (_setThemeMode(themeMode), _setPureDarkMode(pureDarkMode)).wait;

    if (hasSetTheme || hasSetPureDarkMode) {
      state = state.copyWith(mode: themeMode, pureDarkMode: pureDarkMode);
    }
  }

  /// Used to toggle between light and dark theme modes.
  Future<void> toggle() {
    final platformBrightness = ref.read(platformBrightnessProvider);
    final newMode = state.mode.isDark(platformBrightness)
        ? ThemeMode.light
        : ThemeMode.dark;

    return setThemeMode(newMode);
  }

  Future<void> togglePureDarkMode() async {
    final value = !state.pureDarkMode;
    final success = await _setPureDarkMode(value);
    if (success) state = state.copyWith(pureDarkMode: value);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final success = await _setThemeMode(mode);
    if (success) state = state.copyWith(mode: mode);
  }

  /// Used to reset the theme mode to the default theme mode.
  Future<void> reset() {
    return setThemeMode(ref.read(defaultThemeModeProvider));
  }

  Future<bool> _setThemeMode(ThemeMode mode) async {
    if (mode == state.mode) return false;

    final prefs = await ref.read(sharedPreferencesProvider.future);
    return prefs.setInt(themeKey, mode.index);
  }

  Future<bool> _setPureDarkMode(bool value) async {
    if (value == state.pureDarkMode) return false;

    final prefs = await ref.read(sharedPreferencesProvider.future);
    return prefs.setBool(pureDarkModeKey, value);
  }
}

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeMode mode,
    @Default(false) bool pureDarkMode,
  }) = _ThemeState;
}
