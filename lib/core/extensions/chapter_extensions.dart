import 'dart:io';

import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
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

extension DbChapterExtensions on DbChapter {
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
