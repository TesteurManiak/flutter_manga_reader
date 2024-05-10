import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/platform/app_info.dart';
import 'package:flutter_manga_reader/core/utils/consts.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/navigation/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appVersion = ref.watch(
      getAppVersionProvider.select(
        (v) {
          return v.maybeWhen(
            data: (version) => version,
            orElse: () => '?',
          );
        },
      ),
    );

    final settings = <_SettingData>[
      _SettingData(
        titleFetcher: (strings) => strings.settings_general,
        subtitleFetcher: (strings) => strings.settings_general_subtitle,
        icon: Icons.tune,
        onTap: () => const GeneralSettingsRoute().push<void>(context),
      ),
      _SettingData(
        titleFetcher: (strings) => strings.settings_appearance,
        subtitleFetcher: (strings) => strings.settings_appearance_subtitle,
        icon: Icons.palette_outlined,
        onTap: () => const AppearanceSettingsRoute().push<void>(context),
      ),
      _SettingData(
        titleFetcher: (strings) => strings.settings_about,
        subtitleFetcher: (_) => '${Consts.appName} $appVersion',
        icon: Icons.info_outline,
        onTap: () => const AboutSettingsRoute().push<void>(context),
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

    return ListTile(
      title: Text(data.titleFetcher(strings)),
      subtitle: Text(data.subtitleFetcher(strings)),
      leading: Icon(data.icon),
      onTap: data.onTap,
    );
  }
}

class _SettingData {
  const _SettingData({
    required this.titleFetcher,
    required this.subtitleFetcher,
    required this.icon,
    required this.onTap,
  });

  final LocalizedStringFetcher titleFetcher;
  final LocalizedStringFetcher subtitleFetcher;
  final IconData icon;
  final VoidCallback? onTap;
}
