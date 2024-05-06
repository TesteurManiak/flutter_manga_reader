import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/image_extensions.dart';

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

  String getFilename({ImageExtension defaultExt = ImageExtension.jpg}) {
    final fileExt = switch (imageUrl) {
      final imageUrl? =>
        ImageExtension.tryParse(imageUrl.split('.').lastOrNull) ?? defaultExt,
      _ => defaultExt,
    };

    return '$number.$fileExt';
  }
}
