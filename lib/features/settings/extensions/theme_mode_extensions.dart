import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';

extension LocalizedThemeModeExtension on ThemeMode {
  String localized(AppLocalizations strings) {
    switch (this) {
      case ThemeMode.system:
        return strings.settings_appearance_system_default;
      case ThemeMode.light:
        return strings.settings_appearance_disabled;
      case ThemeMode.dark:
        return strings.settings_appearance_enabled;
    }
  }
}
