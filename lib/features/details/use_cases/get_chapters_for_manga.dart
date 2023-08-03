import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_chapters_for_manga.g.dart';

@riverpod
Future<List<Chapter>> getChaptersForManga(
  GetChaptersForMangaRef ref,
  int mangaId,
) {
  return ref.watch(localDatasourceProvider).getChapters(mangaId);
}
