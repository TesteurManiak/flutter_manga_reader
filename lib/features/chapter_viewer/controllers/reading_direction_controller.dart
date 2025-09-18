import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final watchReadingDirectionProvider = StreamProvider.autoDispose
    .family<ReadingDirection, int>((Ref ref, int mangaId) {
      return ref.watch(localDatasourceProvider).watchReadingDirection(mangaId);
    });

final readingDirectionControllerProvider = AsyncNotifierProvider.autoDispose
    .family<ReadingDirectionController, ReadingDirection, int>(
      ReadingDirectionController.new,
    );

class ReadingDirectionController extends AsyncNotifier<ReadingDirection> {
  ReadingDirectionController(this.mangaId);

  final int mangaId;

  @override
  Future<ReadingDirection> build() =>
      ref.watch(watchReadingDirectionProvider(mangaId).future);

  Future<void> setDirection(ReadingDirection? direction) async {
    if (direction != null) {
      state = AsyncData(direction);
      await ref
          .read(localDatasourceProvider)
          .setReadingDirection(mangaId: mangaId, direction: direction);
    }
  }
}
