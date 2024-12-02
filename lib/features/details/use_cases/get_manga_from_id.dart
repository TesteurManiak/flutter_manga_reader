import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_manga_from_id.g.dart';

@Riverpod(dependencies: [localDatasource])
Future<Manga?> getMangaFromId(Ref ref, int id) {
  return ref.watch(localDatasourceProvider).getMangaById(id);
}
