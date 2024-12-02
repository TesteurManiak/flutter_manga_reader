import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'directories.g.dart';

@Riverpod(keepAlive: true)
Future<Directory> applicationDocumentsDirectory(Ref ref) =>
    getApplicationDocumentsDirectory();
