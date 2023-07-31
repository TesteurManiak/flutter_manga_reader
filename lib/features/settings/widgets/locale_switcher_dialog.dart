import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/extensions/locale_extensions.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocaleSwitcherDialog extends StatelessWidget
    with ShowableDialogMixin<Locale> {
  const LocaleSwitcherDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;
    final size = MediaQuery.sizeOf(context);
    const locales = AppLocalizations.supportedLocales;

    return AlertDialog(
      title: Text("Langue de l'application".hardcoded),
      content: SizedBox(
        width: size.width * 0.8,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: locales.length,
          itemBuilder: (_, index) => _LocaleTile(locales[index]),
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

class _LocaleTile extends ConsumerWidget {
  const _LocaleTile(this.locale);

  final Locale locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeControllerProvider);

    return RadioListTile<Locale>(
      title: Text(locale.translatedLocaleName),
      value: locale,
      groupValue: currentLocale,
      onChanged: (_) => Navigator.pop(context, locale),
    );
  }
}
