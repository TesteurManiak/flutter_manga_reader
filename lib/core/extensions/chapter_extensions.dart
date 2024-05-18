import 'dart:io';

import 'package:flutter_manga_reader/core/sources/drift_datasource/app_database.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as p;

extension ChapterExtensions on Chapter {
  String get localPath {
    return p.join('MangaReader', mangaId.toString(), id.toString());
  }

  String getFullLocalPath(Directory baseDir) {
    return p.join(baseDir.path, localPath);
  }
}

extension DbChapterExtensions on DbChapter {
  String get localPath {
    return p.join('MangaReader', mangaId.toString(), id.toString());
  }

  String getFullLocalPath(Directory baseDir) {
    return p.join(baseDir.path, localPath);
  }
}

extension ChapterPageExtensions on ChapterPage {
  String getFullLocalPath(String chapterPath) {
    return p.join(chapterPath, getFilename());
  }
}
