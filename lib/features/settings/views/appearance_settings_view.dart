import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/providers/theme_controller.dart';
import 'package:flutter_manga_reader/features/settings/extensions/theme_mode_extensions.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/widgets/theme_switcher_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppearanceSettingsView extends StatelessWidget {
  const AppearanceSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSettingsView(
      title: context.strings.settings_appearance,
      children: const [
        _ThemeModeSwitcher(),
        _PureDarkModeSwitcher(),
      ],
    );
  }
}

class _ThemeModeSwitcher extends ConsumerWidget {
  const _ThemeModeSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(appThemeModeProvider);
    final strings = context.strings;

    return ListTile(
      leading: const Icon(Icons.dark_mode),
      title: Text(strings.settings_appearance_dark_mode),
      subtitle: Text(currentThemeMode.localized(strings)),
      onTap: () {
        const ThemeSwitcherDialog().show(context).then((value) {
          if (value != null) {
            ref.read(themeControllerProvider.notifier).setThemeMode(value);
          }
        });
      },
    );
  }
}

class _PureDarkModeSwitcher extends ConsumerWidget {
  const _PureDarkModeSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pureDarkMode = ref.watch(pureDarkModeStateProvider);
    final strings = context.strings;

    return SwitchListTile(
      title: Text(strings.settings_appearance_pure_dark_mode),
      value: pureDarkMode,
      onChanged: (_) {
        ref.read(themeControllerProvider.notifier).togglePureDarkMode();
      },
    );
  }
}
