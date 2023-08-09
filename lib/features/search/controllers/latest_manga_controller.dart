import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'latest_manga_controller.g.dart';

@riverpod
class LatestMangaController extends _$LatestMangaController {
  @override
  PaginatedMangaState build() {
    return const PaginatedMangaState.loading(page: 0);
  }
}
