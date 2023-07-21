import 'dart:io' as io;

import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/platform/app_file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pick_backup_file.g.dart';

@riverpod
Future<Result<io.File, Object>> pickBackupFile(PickBackupFileRef ref) async {
  final filePath = await ref.watch(appFilePickerProvider).pickFile(
    allowedExtensions: ['proto'],
  );

  if (filePath == null) {
    return const Result.failure('No file was picked');
  }

  return Result.success(io.File(filePath));
}
