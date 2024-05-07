import 'dart:io';

import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as path;

extension ChapterExtensions on Chapter {
  String getLocalPath(Directory baseDir) {
    return path.join(
      baseDir.path,
      'MangaReader',
      mangaId.toString(),
      id.toString(),
    );
  }
}
