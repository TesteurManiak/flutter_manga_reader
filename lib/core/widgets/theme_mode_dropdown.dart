import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/providers/theme_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that selects a theme mode.
class ThemeModeDropdown extends ConsumerWidget {
  const ThemeModeDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeControllerProvider);

    return DropdownButton(
      value: themeMode,
      items: [
        for (final mode in ThemeMode.values)
          DropdownMenuItem(
            value: mode,
            child: Text(mode.name),
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
