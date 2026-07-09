import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/showable.dart';
import 'package:flutter_manga_reader/core/providers/theme_controller.dart';
import 'package:flutter_manga_reader/features/settings/extensions/theme_mode_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitcherDialog extends ConsumerWidget
    with ShowableDialogMixin<ThemeMode> {
  const ThemeSwitcherDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;
    final groupValue = ref.watch(appThemeModeProvider);

    return AlertDialog(
      title: Text(strings.settings_appearance_dark_mode),
      content: RadioGroup<ThemeMode>(
        groupValue: groupValue,
        onChanged: (value) => Navigator.pop(context, value),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final mode in ThemeMode.values)
              RadioListTile<ThemeMode>(
                title: Text(mode.localized(strings)),
                value: mode,
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(strings.generic_cancel),
        ),
      ],
    );
  }
}
