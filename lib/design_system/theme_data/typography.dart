import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'typography.tailor.dart';

/// {@template app_typography}
/// Class containing the [TextStyle]s (without color) to be used in the app.
/// {@endtemplate}
///
/// If you target a platform different than mobile (e.g: desktop, tablet) you
/// might want to create new constructors (e.g: `AppTypography.large()`)
@TailorMixin()
class AppTypography extends ThemeExtension<AppTypography>
    with DiagnosticableTreeMixin, _$AppTypographyTailorMixin {
  /// {@macro app_typography}
  const AppTypography();

  /// [TextStyle]s to be used for a mobile form factor.
  const AppTypography.regular() : this();
}
