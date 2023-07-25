import 'package:flutter_manga_reader/core/models/manga.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_dex_datasource/models/manga_dex_manga.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_dex_response.freezed.dart';
part 'manga_dex_response.g.dart';

@freezed
class MangaDexResponse with _$MangaDexResponse {
  const factory MangaDexResponse({
    required String result,
    required String response,
    @JsonKey(name: 'data')
    @Default(<Manga>[])
    @MangaDexToMangaConverter()
    List<Manga> mangas,
    @Default(0) int limit,
    @Default(0) int offset,
    @Default(0) int total,
  }) = _MangaDexResponse;

  factory MangaDexResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaDexResponseFromJson(json);
}
