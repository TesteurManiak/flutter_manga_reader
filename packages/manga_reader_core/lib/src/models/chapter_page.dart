import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_page.freezed.dart';

@freezed
class ChapterPage with _$ChapterPage {
  const factory ChapterPage({
    required int index,
    @Default('') String url,
    String? imageUrl,
  }) = _ChapterPage;

  const ChapterPage._();

  int get number => index + 1;
}
