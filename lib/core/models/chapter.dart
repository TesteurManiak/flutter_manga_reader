import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    int? id,
    int? mangaId,
    required String url,
    required String name,
    String? scanlator,
    @Default(false) bool read,
    @Default(false) bool bookmark,
    @Default(0) int lastPageRead,
    @Default(0) int dateFetch,
    @Default(0) int dateUpload,
    @Default(0.0) double chapterNumber,
    @Default(0) int sourceOrder,
    @Default(0) int lastModifier,
  }) = _Chapter;
}
