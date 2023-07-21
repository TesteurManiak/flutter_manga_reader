import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'colors.tailor.dart';

/// {@template app_colors}
/// Class containing the [Color]s to be used in the app.
/// {@endtemplate}
@TailorMixin()
class AppColors extends ThemeExtension<AppColors>
    with DiagnosticableTreeMixin, _$AppColorsTailorMixin {
  /// {@macro app_colors}
  const AppColors();

  /// Colors to be used in the light theme.
  const AppColors.light() : this();

  /// Colors to be used in the dark theme.
  ///
  /// You can remove this constructor if there is no dark theme.
  const AppColors.dark() : this();
}
