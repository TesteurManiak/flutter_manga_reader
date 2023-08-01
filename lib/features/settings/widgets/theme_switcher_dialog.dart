import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitcherDialog extends StatelessWidget
    with ShowableDialogMixin<ThemeMode> {
  const ThemeSwitcherDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return AlertDialog(
      title: Text('Dark mode'.hardcoded),
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
    final groupValue = ref.watch(themeControllerProvider);

    return RadioListTile<ThemeMode>(
      title: Text(mode.localized(context.strings)),
      value: mode,
      groupValue: groupValue,
      onChanged: (_) => Navigator.pop(context, mode),
    );
  }
}

extension on ThemeMode {
  String localized(AppLocalizations strings) {
    switch (this) {
      case ThemeMode.system:
        return 'System default'.hardcoded;
      case ThemeMode.light:
        return 'Disabled'.hardcoded;
      case ThemeMode.dark:
        return 'Enabled'.hardcoded;
    }
  }
}
