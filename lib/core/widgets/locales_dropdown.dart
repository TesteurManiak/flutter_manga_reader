import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/locale_extensions.dart';
import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that selects a locale.
class LocalesDropdown extends ConsumerWidget {
  const LocalesDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);

    return DropdownButton<Locale>(
      value: locale,
      items: [
        for (final locale in AppLocalizations.supportedLocales)
          DropdownMenuItem(
            value: locale,
            child: Text(locale.translatedLocaleName()),
          ),
      ],
      onChanged: (locale) {
        if (locale != null) {
          ref.read(localeControllerProvider.notifier).setLocale(locale);
        }
      },
    );
  }
}
