import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/utils/consts.dart';
import 'package:flutter_manga_reader/core/widgets/app_asset_image.dart';
import 'package:flutter_manga_reader/design_system/icons/manga_reader_icons.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_manga_reader/gen/assets.gen.dart';
import 'package:flutter_manga_reader/src/version.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        _SocialLinks(),
      ],
    );
  }
}

class _VersionTile extends StatelessWidget {
  const _VersionTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.strings.settings_about_version),
      subtitle: const Text(packageVersion),
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

class _SocialLinks extends StatelessWidget {
  const _SocialLinks();

  @override
  Widget build(BuildContext context) {
    const links = <_SocialLinkData>[
      _SocialLinkData(
        icon: Icons.public,
        link: 'https://rouxguillau.me',
      ),
      _SocialLinkData(
        icon: MangaReader.twitter,
        link: 'https://twitter.com/TesteurManiak',
      ),
      _SocialLinkData(
        icon: MangaReader.github,
        link: 'https://github.com/TesteurManiak',
      ),
    ];

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (final link in links)
          IconButton(
            icon: Icon(link.icon),
            onPressed: () => launchUrlString(link.link),
          ),
      ],
    );
  }
}

class _SocialLinkData {
  const _SocialLinkData({
    required this.icon,
    required this.link,
  });

  final IconData icon;
  final String link;
}
