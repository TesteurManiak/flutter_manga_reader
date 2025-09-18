import 'dart:io' as io;

import 'package:file_picker/file_picker.dart' as fp;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filePickerServiceProvider = Provider<FilePickerService>(
  (ref) => FilePickerService(),
);

class FilePickerService {
  Future<io.File?> pickFile() async {
    final result = await fp.FilePicker.platform.pickFiles();
    if (result?.files.single.path case final path?) return io.File(path);
    return null;
  }
}
