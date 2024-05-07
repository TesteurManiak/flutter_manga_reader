import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'directories.g.dart';

@Riverpod(keepAlive: true)
Future<Directory> applicationDocumentsDirectory(
  ApplicationDocumentsDirectoryRef ref,
) async {
  return getApplicationDocumentsDirectory();
}
