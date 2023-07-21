import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that selects a theme mode.
class ThemeModeDropdown extends ConsumerWidget {
  const ThemeModeDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeControllerProvider);
    final strings = context.strings;

    return DropdownButton(
      value: themeMode,
      items: [
        for (final mode in ThemeMode.values)
          DropdownMenuItem(
            value: mode,
            child: Text(mode.toLocalizedString(strings)),
          ),
      ],
      onChanged: (mode) {
        if (mode != null) {
          ref.read(themeControllerProvider.notifier).setThemeMode(mode);
        }
      },
    );
  }
}

extension on ThemeMode {
  String toLocalizedString(AppLocalizations localizations) {
    return switch (this) {
      ThemeMode.system => localizations.theme_mode_system,
      ThemeMode.light => localizations.theme_mode_light,
      ThemeMode.dark => localizations.theme_mode_dark,
    };
  }
}
