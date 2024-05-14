import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/string_extensions.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';

class BackupSettingsView extends StatelessWidget {
  const BackupSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSettingsView(
      // TODO(Guillaume): localize
      title: 'Backup & Restore'.hardcoded,
    );
  }
}
