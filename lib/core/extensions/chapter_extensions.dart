import 'dart:io';

import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path/path.dart' as p;

import '../sources/drift_datasource/tables/chapters.drift.dart';

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
