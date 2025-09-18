import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final applicationDocumentsDirectoryProvider = FutureProvider(
  (ref) => getApplicationDocumentsDirectory(),
);
