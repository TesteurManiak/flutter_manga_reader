import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'spacings.tailor.dart';

/// {@template app_spacings}
/// Class containing the spacings to be used in the app.
/// {@endtemplate}
///
/// If you target a platform different than mobile (e.g: desktop, tablet) you
/// might want to create new constructors (e.g: `AppSpacings.large()`)
@TailorMixin()
class AppSpacings extends ThemeExtension<AppSpacings>
    with DiagnosticableTreeMixin, _$AppSpacingsTailorMixin {
  /// {@macro app_spacings}
  const AppSpacings();

  const AppSpacings.regular() : this();
}
