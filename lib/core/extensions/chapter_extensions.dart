import 'dart:io';

import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as path;

extension ChapterExtensions on Chapter {
  String get localPath {
    return path.join('MangaReader', mangaId.toString(), id.toString());
  }

  String getFullLocalPath(Directory baseDir) {
    return path.join(baseDir.path, localPath);
  }
}

extension ChapterPageExtensions on ChapterPage {
  String getFullLocalPath(String chapterPath) {
    return path.join(chapterPath, getFilename());
  }
}
