import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GeneralSettingsView extends StatelessWidget {
  const GeneralSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return GenericSettingsView(
      title: strings.settings_general,
      children: const [
        _LocaleSwitcher(),
      ],
    );
  }
}

class _LocaleSwitcher extends ConsumerWidget {
  const _LocaleSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;

    return ListTile(
      title: Text("Langue de l'application".hardcoded),
      subtitle: Text("Par défaut".hardcoded),
      onTap: () {
        // TODO(Guillaume): open a dialog to select the language
      },
    );
  }
}
