import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/design_system/design_system.dart';

/// The themes for this app are defined here.
class AppTheme {
  const AppTheme._();

  /// The light theme for this app.
  static ThemeData light() {
    final baseTheme = ThemeData.light();
    return baseTheme.copyWith(
      appBarTheme: baseTheme.appBarTheme.copyWith(
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
      ),
      popupMenuTheme: baseTheme.popupMenuTheme.copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
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
  static ThemeData dark({required bool pureDark}) {
    final baseTheme = ThemeData.dark();

    return baseTheme.copyWith(
      scaffoldBackgroundColor:
          pureDark ? Colors.black : baseTheme.scaffoldBackgroundColor,
      appBarTheme: baseTheme.appBarTheme.copyWith(
        centerTitle: false,
        backgroundColor:
            pureDark ? Colors.black : baseTheme.appBarTheme.backgroundColor,
        surfaceTintColor: Colors.transparent,
      ),
      popupMenuTheme: baseTheme.popupMenuTheme.copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      bottomNavigationBarTheme: baseTheme.bottomNavigationBarTheme.copyWith(
        backgroundColor: pureDark
            ? Colors.black
            : baseTheme.bottomNavigationBarTheme.backgroundColor,
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
