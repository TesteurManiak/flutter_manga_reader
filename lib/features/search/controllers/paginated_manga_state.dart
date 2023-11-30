import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'paginated_manga_state.freezed.dart';

@freezed
sealed class PaginatedMangaState with _$PaginatedMangaState {
  const factory PaginatedMangaState.loading({
    required int page,
    @Default(true) bool hasMore,
  }) = PaginatedMangaLoading;
  const factory PaginatedMangaState.loaded({
    required int page,
    required bool hasMore,
    required List<SourceManga> mangas,
  }) = PaginatedMangaLoaded;
  const factory PaginatedMangaState.empty({
    required int page,
    @Default(false) bool hasMore,
  }) = PaginatedMangaEmpty;
  const factory PaginatedMangaState.error({
    required int page,
    required bool hasMore,
    String? message,
  }) = PaginatedMangaError;

  const PaginatedMangaState._();

  List<SourceManga>? get mangasOrNull {
    return switch (this) {
      PaginatedMangaLoaded(:final mangas) => mangas,
      _ => null,
    };
  }

  List<SourceManga> get mangasOrEmpty {
    return switch (this) {
      PaginatedMangaLoaded(:final mangas) => mangas,
      _ => [],
    };
  }
}
