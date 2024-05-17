import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/showable.dart';
import 'package:flutter_manga_reader/core/providers/theme_controller.dart';
import 'package:flutter_manga_reader/features/settings/extensions/theme_mode_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitcherDialog extends StatelessWidget
    with ShowableDialogMixin<ThemeMode> {
  const ThemeSwitcherDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return AlertDialog(
      title: Text(strings.settings_appearance_dark_mode),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final mode in ThemeMode.values) _ThemeRadioTile(mode),
        ],
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

class _ThemeRadioTile extends ConsumerWidget {
  const _ThemeRadioTile(this.mode);

  final ThemeMode mode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupValue = ref.watch(appThemeModeProvider);

    return RadioListTile<ThemeMode>(
      title: Text(mode.localized(context.strings)),
      value: mode,
      groupValue: groupValue,
      onChanged: (_) => Navigator.pop(context, mode),
    );
  }
}
