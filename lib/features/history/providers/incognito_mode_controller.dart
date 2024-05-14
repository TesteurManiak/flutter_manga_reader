import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'incognito_mode_controller.g.dart';

@Riverpod(keepAlive: true)
class IncognitoModeController extends _$IncognitoModeController {
  @override
  bool build() => false;

  void toggle() => state = !state;
}
