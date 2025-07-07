// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spacings.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppSpacingsTailorMixin
    on ThemeExtension<AppSpacings>, DiagnosticableTreeMixin {
  @override
  AppSpacings copyWith() {
    return AppSpacings();
  }

  @override
  AppSpacings lerp(covariant ThemeExtension<AppSpacings>? other, double t) {
    if (other is! AppSpacings) return this as AppSpacings;
    return AppSpacings();
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppSpacings);
  }

  @override
  int get hashCode {
    return runtimeType.hashCode;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AppSpacings'));
  }
}

extension AppSpacingsBuildContextProps on BuildContext {
  AppSpacings get appSpacings => Theme.of(this).extension<AppSpacings>()!;
}
