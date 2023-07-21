import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/restore_data/controllers/restore_data_controller.dart';
import 'package:flutter_manga_reader/features/restore_data/widgets/restore_error_snackbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestoreDataView extends ConsumerWidget {
  const RestoreDataView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      restoreDataControllerProvider.select((v) => v.isLoading),
    );

    ref.listen(restoreDataControllerProvider, (_, next) {
      next.whenOrNull(
        error: (error) {
          RestoreErrorSnackbar(error).show(
            context,
            backgroundColor: Theme.of(context).colorScheme.error,
          );
        },
      );
    });

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: isLoading
              ? null
              : () {
                  ref
                      .read(restoreDataControllerProvider.notifier)
                      .pickBackupFile();
                },
          child: Text('Pick proto file'.hardcoded),
        ),
      ),
    );
  }
}
