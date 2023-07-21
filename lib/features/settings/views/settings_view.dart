import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/utils/consts.dart';
import 'package:flutter_manga_reader/features/feature_flags/views/feature_flags_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.settings_title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(strings.settings_theme_select),
            trailing: const ThemeModeDropdown(),
          ),
          ListTile(
            title: Text(strings.settings_language_select),
            trailing: const LocalesDropdown(),
          ),
          // All options that should only visible while developing.
          if (Consts.canShowDebugOptions) ...[
            const _FeatureFlagsItem(),
          ],
        ],
      ),
    );
  }
}

class _FeatureFlagsItem extends StatelessWidget {
  const _FeatureFlagsItem();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Feature flags'),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (_) => const FeatureFlagsView()),
        );
      },
    );
  }
}
