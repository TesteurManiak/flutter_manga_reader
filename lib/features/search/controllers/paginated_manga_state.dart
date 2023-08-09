import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'paginated_manga_state.freezed.dart';

@freezed
class PaginatedMangaState with _$PaginatedMangaState {
  const factory PaginatedMangaState.loading({
    required int page,
    @Default(true) bool hasMore,
  }) = _Loading;
  const factory PaginatedMangaState.loaded({
    required int page,
    required bool hasMore,
    required List<SourceManga> mangas,
  }) = _Loaded;
  const factory PaginatedMangaState.empty({
    required int page,
    @Default(false) bool hasMore,
  }) = _Empty;
  const factory PaginatedMangaState.error({
    required int page,
    required bool hasMore,
    String? message,
  }) = _Error;

  const PaginatedMangaState._();

  List<SourceManga>? get mangasOrNull {
    return mapOrNull(loaded: (state) => state.mangas);
  }
}
