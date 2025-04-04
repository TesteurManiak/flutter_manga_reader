import 'dart:io' as io;

import 'package:file_picker/file_picker.dart' as fp;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_picker_service.g.dart';

@Riverpod(keepAlive: true)
FilePickerService filePickerService(Ref ref) => FilePickerService();

class FilePickerService {
  Future<io.File?> pickFile() async {
    final result = await fp.FilePicker.platform.pickFiles();
    if (result?.files.single.path case final path?) return io.File(path);
    return null;
  }
}
