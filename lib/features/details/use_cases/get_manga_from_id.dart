import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

final getMangaFromIdProvider = FutureProvider.family<Manga?, int>((ref, id) {
  return ref.watch(localDatasourceProvider).getMangaById(id);
});
