import 'package:flutter_riverpod/flutter_riverpod.dart';

final incognitoModeControllerProvider =
    NotifierProvider<IncognitoModeController, bool>(
      IncognitoModeController.new,
    );

class IncognitoModeController extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}
