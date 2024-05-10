import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/cache/cache_manager.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/locale_extensions.dart';
import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/widgets/locale_switcher_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GeneralSettingsView extends StatelessWidget {
  const GeneralSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSettingsView(
      title: context.strings.settings_general,
      children: const [
        _LocaleSwitcher(),
        _ClearCache(),
      ],
    );
  }
}

class _LocaleSwitcher extends ConsumerWidget {
  const _LocaleSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;
    final currentLocale = ref.watch(localeControllerProvider);

    return ListTile(
      leading: const Icon(Icons.translate),
      title: Text(strings.settings_general_language),
      subtitle: Text(currentLocale.translatedLocaleName),
      onTap: () {
        const LocaleSwitcherDialog().show(context).then((value) {
          if (value == null) return;

          ref.read(localeControllerProvider.notifier).setLocale(value);
        });
      },
    );
  }
}

class _ClearCache extends ConsumerWidget {
  const _ClearCache();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(Icons.cleaning_services),
      title: Text(context.strings.settings_general_clear_cache),
      onTap: () => ref.read(appCacheManagerProvider).clearCache(),
    );
  }
}
