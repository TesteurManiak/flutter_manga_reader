import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/locale_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/showable.dart';
import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocaleSwitcherDialog extends ConsumerWidget
    with ShowableDialogMixin<Locale> {
  const LocaleSwitcherDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;
    final size = MediaQuery.sizeOf(context);
    const locales = AppLocalizations.supportedLocales;
    final currentLocale = ref.watch(localeControllerProvider);

    return AlertDialog(
      title: Text(strings.settings_general_language),
      content: SizedBox(
        width: size.width * 0.8,
        child: RadioGroup<Locale>(
          groupValue: currentLocale,
          onChanged: (value) => Navigator.pop(context, value),
          child: ListView(
            shrinkWrap: true,
            children: [const _DefaultTile(), ...locales.map(_LocaleTile.new)],
          ),
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

class _DefaultTile extends ConsumerWidget {
  const _DefaultTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final systemLocale = ref.watch(systemLocaleProvider);
    return RadioListTile<Locale>(
      title: Text(context.strings.settings_general_language_default),
      value: systemLocale,
    );
  }
}

class _LocaleTile extends StatelessWidget {
  const _LocaleTile(this.locale);

  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<Locale>(
      title: Text(locale.translatedLocaleName),
      value: locale,
    );
  }
}
