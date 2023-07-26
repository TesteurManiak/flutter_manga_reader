import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mangadex/src/models/manga.dart';

part 'manga_response.freezed.dart';
part 'manga_response.g.dart';

@freezed
class MangaResponse with _$MangaResponse {
  const factory MangaResponse({
    @Default(<MangaData>[]) List<MangaData> data,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _MangaResponse;

  factory MangaResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaResponseFromJson(json);
}
