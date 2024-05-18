import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/services/toaster_service.dart';
import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteAllDataTile extends ConsumerWidget {
  const DeleteAllDataTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toaster = ref.watch(toasterServiceProvider);
    return ListTile(
      leading: const Icon(Icons.delete_forever),
      title: const Text('Delete all data'),
      onTap: () async {
        final db = ref.read(appDatabaseProvider);
        await db.batch((b) {
          for (final table in db.allTables) {
            b.deleteAll(table);
          }
        });

        unawaited(toaster.showToast(const Text('All data deleted')));
      },
    );
  }
}
