import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chapter_history.g.dart';

@Riverpod(keepAlive: true, dependencies: [localDatasource])
Stream<List<ChapterHistory>> watchChapterHistory(WatchChapterHistoryRef ref) {
  return ref.watch(localDatasourceProvider).watchHistory();
}
