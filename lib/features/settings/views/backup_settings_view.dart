import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/services/file_picker_service.dart';
import 'package:flutter_manga_reader/core/services/toaster_service.dart';
import 'package:flutter_manga_reader/features/settings/providers/backup_controller.dart';
import 'package:flutter_manga_reader/features/settings/widgets/generic_settings_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class BackupSettingsView extends ConsumerStatefulWidget {
  const BackupSettingsView({super.key});

  @override
  ConsumerState<BackupSettingsView> createState() => _BackupSettingsViewState();
}

class _BackupSettingsViewState extends ConsumerState<BackupSettingsView> {
  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    ref.listen(backupControllerProvider, (prev, next) {
      if (next is BackupStateLoading) {
        context.loaderOverlay.show();
      }
      if (prev is BackupStateLoading && next is! BackupStateLoading) {
        context.loaderOverlay.hide();
      }
    });

    return LoaderOverlay(
      child: GenericSettingsView(
        title: strings.settings_backup,
        children: const [
          _ImportTachiyomiBackupTile(),
        ],
      ),
    );
  }
}

class _ImportTachiyomiBackupTile extends ConsumerWidget {
  const _ImportTachiyomiBackupTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toaster = ref.watch(toasterServiceProvider);
    final strings = context.strings;

    ref.listen(backupControllerProvider, (_, next) {
      if (next case BackupStateError(type: BackupErrorType.invalidBackup)) {
        toaster.showToast(Text(strings.invalid_backup));
      } else if (next case BackupStateSuccess()) {
        toaster.showToast(Text(strings.backup_restored));
      }
    });

    return ListTile(
      leading: const Icon(Icons.add_circle_outline),
      title: Text(strings.settings_backup_tachiyomi_import_title),
      subtitle: Text(strings.settings_backup_tachiyomi_import_subtitle),
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
