import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/string_extensions.dart';
import 'package:flutter_manga_reader/core/services/file_picker_service.dart';
import 'package:flutter_manga_reader/core/services/toaster_service.dart';
import 'package:flutter_manga_reader/features/settings/providers/backup_controller.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BackupSettingsView extends StatelessWidget {
  const BackupSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSettingsView(
      // TODO(Guillaume): localize
      title: 'Backup & Restore'.hardcoded,
      children: const [
        _ImportTachiyomiBackupTile(),
      ],
    );
  }
}

class _ImportTachiyomiBackupTile extends ConsumerWidget {
  const _ImportTachiyomiBackupTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toaster = ref.watch(toasterServiceProvider);

    ref.listen(backupControllerProvider, (_, next) {
      if (next case BackupStateError(type: BackupErrorType.invalidBackup)) {
        // TODO(Guillaume): localize
        toaster.showToast(Text('Invalid backup file'.hardcoded));
      }
    });

    return ListTile(
      leading: const Icon(Icons.add_circle_outline),
      // TODO(Guillaume): localize
      title: Text('Import Tachiyomi/Mihon Backup'.hardcoded),
      subtitle: Text('Import library from Tachiyomi backup file'.hardcoded),
      onTap: () async {
        final file = await ref.read(filePickerServiceProvider).pickFile();

        if (file == null) return;
        unawaited(
          ref
              .read(backupControllerProvider.notifier)
              .importTachiyomiBackup(file),
        );
      },
    );
  }
}
