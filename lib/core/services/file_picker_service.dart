import 'dart:io' as io;

import 'package:file_picker/file_picker.dart' as fp;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_picker_service.g.dart';

@Riverpod(keepAlive: true)
FilePickerService filePickerService(FilePickerServiceRef ref) {
  return FilePickerService();
}

class FilePickerService {
  Future<io.File?> pickFile({List<String>? allowedExtensions}) async {
    final result = await fp.FilePicker.platform.pickFiles(
      type: fp.FileType.custom,
      allowedExtensions: allowedExtensions,
    );
    if (result?.files.single.path case final path?) return io.File(path);
    return null;
  }
}
