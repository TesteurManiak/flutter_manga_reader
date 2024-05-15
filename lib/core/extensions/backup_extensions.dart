import 'package:flutter_manga_reader/gen/tachiyomi.pb.dart' as pb;
import 'package:manga_reader_core/manga_reader_core.dart';

extension BackupMangaExtensions on pb.BackupManga {
  SourceManga toSource() {
    return SourceManga(
      url: url,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: genre.isNotEmpty ? genre.join(', ') : null,
      status: MangaStatus.values[status],
      thumbnailUrl: thumbnailUrl,
      updateStrategy: updateStrategy.toUpdateStrategy(),
      sourceId: source.toString(),
    );
  }
}

extension on pb.UpdateStrategy {
  UpdateStrategy toUpdateStrategy() {
    return switch (this) {
      pb.UpdateStrategy.ALWAYS_UPDATE => UpdateStrategy.alwaysUpdate,
      pb.UpdateStrategy.ONLY_FETCH_ONCE => UpdateStrategy.onlyFetchOnce,
      _ => throw ArgumentError.value(this, 'UpdateStrategy', 'Unknown value')
    };
  }
}
