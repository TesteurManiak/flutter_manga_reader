import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_file_picker.g.dart';

abstract class AppFilePicker {
  /// Pick a single file and return its path.
  ///
  /// Returns null if no file was picked.
  Future<String?> pickFile({List<String>? allowedExtensions});
}

class _FilePickerImpl implements AppFilePicker {
  _FilePickerImpl({
    required FilePicker filePicker,
  }) : _filePicker = filePicker;

  final FilePicker _filePicker;

  @override
  Future<String?> pickFile({List<String>? allowedExtensions}) async {
    final result = await _filePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: allowedExtensions,
    );
    return result?.files.singleOrNull?.path;
  }
}

@riverpod
AppFilePicker appFilePicker(AppFilePickerRef ref) {
  return _FilePickerImpl(filePicker: FilePicker.platform);
}
