import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
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
      ],
    );
  }
}

class _ThemeModeSwitcher extends ConsumerWidget {
  const _ThemeModeSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeControllerProvider);
    final strings = context.strings;

    return ListTile(
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
