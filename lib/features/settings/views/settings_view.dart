import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/utils/consts.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/navigation/route.dart';
import 'package:flutter_manga_reader/src/version.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = <_SettingData>[
      _SettingData(
        titleFetcher: (strings) => strings.settings_general,
        subtitleFetcher: (strings) => strings.settings_general_subtitle,
        icon: Icons.tune,
        onTap: () => const GeneralSettingsRoute().go(context),
      ),
      _SettingData(
        titleFetcher: (strings) => strings.settings_appearance,
        subtitleFetcher: (strings) => strings.settings_appearance_subtitle,
        icon: Icons.palette_outlined,
        onTap: () => const AppearanceSettingsRoute().go(context),
      ),
      _SettingData(
        titleFetcher: (strings) => strings.settings_backup,
        icon: Icons.settings_backup_restore_outlined,
        onTap: () => const BackupSettingsRoute().go(context),
      ),
      _SettingData(
        titleFetcher: (strings) => strings.settings_about,
        subtitleFetcher: (_) => '${Consts.appName} $packageVersion',
        icon: Icons.info_outline,
        onTap: () => const AboutSettingsRoute().go(context),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.settings_title),
      ),
      body: ListView.builder(
        itemCount: settings.length,
        itemBuilder: (context, index) => _SettingTile(settings[index]),
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  const _SettingTile(this.data);

  final _SettingData data;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;
    final subtitle = data.subtitleFetcher?.call(strings);

    return ListTile(
      title: Text(data.titleFetcher(strings)),
      subtitle: subtitle != null ? Text(subtitle) : null,
      leading: Icon(data.icon),
      onTap: data.onTap,
    );
  }
}

class _SettingData {
  const _SettingData({
    required this.titleFetcher,
    required this.icon,
    required this.onTap,
    this.subtitleFetcher,
  });

  final LocalizedStringFetcher titleFetcher;
  final LocalizedStringFetcher? subtitleFetcher;
  final IconData icon;
  final VoidCallback? onTap;
}
