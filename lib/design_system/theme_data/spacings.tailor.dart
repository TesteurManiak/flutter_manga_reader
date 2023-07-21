// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

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
    properties.add(DiagnosticsProperty('type', 'AppSpacings'));
  }
}

extension AppSpacingsBuildContextProps on BuildContext {
  AppSpacings get appSpacings => Theme.of(this).extension<AppSpacings>()!;
}
