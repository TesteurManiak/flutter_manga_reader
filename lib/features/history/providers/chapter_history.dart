import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final watchChapterHistoryProvider = StreamProvider<List<ChapterHistory>>((ref) {
  return ref.watch(localDatasourceProvider).watchHistory();
});
