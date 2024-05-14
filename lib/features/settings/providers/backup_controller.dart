import 'dart:io' as io;

import 'package:flutter_manga_reader/gen/tachiyomi.pb.dart' as pb;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'backup_controller.freezed.dart';
part 'backup_controller.g.dart';

@riverpod
class BackupController extends _$BackupController {
  @override
  BackupState build() => const BackupStateInitial();

  Future<void> importTachiyomiBackup(io.File backupFile) async {
    state = const BackupState.loading();

    if (!backupFile.path.endsWith('.proto.gz') &&
        !backupFile.path.endsWith('.tachibk')) {
      state = const BackupState.error(BackupErrorType.invalidBackup);
      return;
    }

    try {
      final bytes = await backupFile.readAsBytes();
      final buffer = io.gzip.decode(bytes);
      final backup = pb.Backup.fromBuffer(buffer);

      // TODO(Guillaume): Implement
      print('Picked: ${backupFile.path}');

      state = const BackupState.success();
    } catch (e) {
      state = const BackupState.error(BackupErrorType.unknown);
    }
  }
}

@freezed
sealed class BackupState with _$BackupState {
  const factory BackupState.initial() = BackupStateInitial;
  const factory BackupState.loading() = BackupStateLoading;
  const factory BackupState.success() = BackupStateSuccess;
  const factory BackupState.error(BackupErrorType type) = BackupStateError;
}

enum BackupErrorType {
  invalidBackup,
  unknown,
}
