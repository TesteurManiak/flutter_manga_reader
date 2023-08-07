import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reading_direction_controller.g.dart';

@riverpod
class ReadingDirectionController extends _$ReadingDirectionController {
  @override
  ReadingDirection build() {
    return ReadingDirection.leftToRight;
  }

  void setDirection(ReadingDirection direction) {
    if (state != direction) {
      state = direction;
    }
  }
}
