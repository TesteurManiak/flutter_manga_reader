import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/design_system/design_system.dart';

/// The themes for this app are defined here.
class AppTheme {
  const AppTheme._();

  /// The light theme for this app.
  static ThemeData light() {
    final baseTheme = ThemeData.light();
    return baseTheme.copyWith(
      useMaterial3: true,
      appBarTheme: baseTheme.appBarTheme.copyWith(
        centerTitle: false,
      ),
      extensions: [
        const AppColors.light(),
        const AppShadows.light(),
        const AppSpacings.regular(),
        const AppTypography.regular(),
      ],
    );
  }

  /// The dark theme for this app.
  static ThemeData dark() {
    final baseTheme = ThemeData.dark();

    return baseTheme.copyWith(
      useMaterial3: true,
      appBarTheme: baseTheme.appBarTheme.copyWith(
        centerTitle: false,
      ),
      extensions: [
        const AppColors.dark(),
        const AppShadows.dark(),
        const AppSpacings.regular(),
        const AppTypography.regular(),
      ],
    );
  }
}
