// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typography.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppTypographyTailorMixin
    on ThemeExtension<AppTypography>, DiagnosticableTreeMixin {
  @override
  AppTypography copyWith() {
    return AppTypography();
  }

  @override
  AppTypography lerp(covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) return this as AppTypography;
    return AppTypography();
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppTypography);
  }

  @override
  int get hashCode {
    return runtimeType.hashCode;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AppTypography'));
  }
}

extension AppTypographyBuildContextProps on BuildContext {
  AppTypography get appTypography => Theme.of(this).extension<AppTypography>()!;
}
