import 'package:flutter/foundation.dart';

class Consts {
  const Consts._();

  static const isDev = bool.fromEnvironment('DEV_MODE_ENABLED');
  static const canShowDebugOptions = kDebugMode || isDev;
  static const appName = 'Manga Reader';
}
