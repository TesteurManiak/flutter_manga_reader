// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

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
    properties.add(DiagnosticsProperty('type', 'AppTypography'));
  }
}

extension AppTypographyBuildContextProps on BuildContext {
  AppTypography get appTypography => Theme.of(this).extension<AppTypography>()!;
}
