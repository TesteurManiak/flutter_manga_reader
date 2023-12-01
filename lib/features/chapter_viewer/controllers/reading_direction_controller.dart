import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reading_direction_controller.g.dart';

@Riverpod(dependencies: [localDatasource])
Stream<ReadingDirection> watchReadingDirection(
  WatchReadingDirectionRef ref,
  int mangaId,
) {
  return ref.watch(localDatasourceProvider).watchReadingDirection(mangaId);
}

@Riverpod(dependencies: [watchReadingDirection, localDatasource])
class ReadingDirectionController extends _$ReadingDirectionController {
  @override
  AsyncValue<ReadingDirection> build(int mangaId) {
    return ref.watch(watchReadingDirectionProvider(mangaId));
  }

  Future<void> setDirection(ReadingDirection? direction) async {
    if (direction != null) {
      state = AsyncData(direction);
      await ref
          .read(localDatasourceProvider)
          .setReadingDirection(mangaId: mangaId, direction: direction);
    }
  }
}
