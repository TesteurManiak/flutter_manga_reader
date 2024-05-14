import 'package:flutter_manga_reader/gen/tachiyomi.pb.dart' as pb;
import 'package:manga_reader_core/manga_reader_core.dart';

extension BackupMangaExtensions on pb.BackupManga {
  SourceManga toSource() {
    return SourceManga(
      title: title,
      url: url,
      description: description,
      author: author,
      // TODO(Guillaume): handle status, genre
      // status: MangaStatus.values[status],
      artist: artist,
      thumbnailUrl: thumbnailUrl,
      sourceId: source.toString(),
    );
  }
}
