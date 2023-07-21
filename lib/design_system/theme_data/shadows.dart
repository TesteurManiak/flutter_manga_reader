import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'shadows.tailor.dart';

/// {@template app_shadows}
/// Class containing the shadows to be used in the app.
/// {@endtemplate}
@TailorMixin()
class AppShadows extends ThemeExtension<AppShadows>
    with DiagnosticableTreeMixin, _$AppShadowsTailorMixin {
  /// {@macro app_shadows}
  const AppShadows();

  /// Shadows to be used in the light theme.
  const AppShadows.light() : this();

  /// Shadows to be used in the dark theme.
  ///
  /// You can remove this constructor if there is no dark theme.
  const AppShadows.dark() : this();
}
