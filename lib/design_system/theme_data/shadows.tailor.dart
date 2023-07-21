// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'shadows.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppShadowsTailorMixin
    on ThemeExtension<AppShadows>, DiagnosticableTreeMixin {
  @override
  AppShadows copyWith() {
    return AppShadows();
  }

  @override
  AppShadows lerp(covariant ThemeExtension<AppShadows>? other, double t) {
    if (other is! AppShadows) return this as AppShadows;
    return AppShadows();
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppShadows);
  }

  @override
  int get hashCode {
    return runtimeType.hashCode;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppShadows'));
  }
}

extension AppShadowsBuildContextProps on BuildContext {
  AppShadows get appShadows => Theme.of(this).extension<AppShadows>()!;
}
