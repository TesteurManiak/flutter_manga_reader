import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/platform/app_info.dart';
import 'package:flutter_manga_reader/core/utils/consts.dart';
import 'package:flutter_manga_reader/core/widgets/app_asset_image.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_manga_reader/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutSettingsView extends StatelessWidget {
  const AboutSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;
    final dark = Theme.of(context).brightness == Brightness.dark;

    return GenericSettingsView(
      title: strings.settings_about,
      header: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: AppAssetImage(
          Assets.svgs.tori,
          color: dark ? Colors.white : Colors.black,
          height: 80,
        ),
      ),
      children: const [
        _VersionTile(),
        _OpenSourceLicenses(),
      ],
    );
  }
}

class _VersionTile extends ConsumerWidget {
  const _VersionTile();

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

    return ListTile(
      title: Text(context.strings.settings_about_version),
      subtitle: Text(appVersion),
    );
  }
}

class _OpenSourceLicenses extends StatelessWidget {
  const _OpenSourceLicenses();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.strings.settings_about_open_source_licenses),
      onTap: () {
        showLicensePage(
          context: context,
          applicationName: Consts.appName,
        );
      },
    );
  }
}
