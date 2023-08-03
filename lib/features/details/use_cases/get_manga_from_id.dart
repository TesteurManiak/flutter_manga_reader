import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_manga_from_id.g.dart';

@riverpod
Future<Manga?> getMangaFromId(GetMangaFromIdRef ref, int id) {
  return ref.watch(localDatasourceProvider).getManga(id);
}
