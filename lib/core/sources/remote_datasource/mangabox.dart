import 'package:flutter_manga_reader/core/sources/remote_datasource/http_clients.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangabox/mangabox.dart';

final mangaboxProvider = Provider<List<MangaDatasource>>((Ref ref) {
  return [
    MangabatDatasource(
      client: ref.watch(sourceClientProvider(MBConsts.mangabatBaseUrl)),
    ),
    MangairoDatasource(
      client: ref.watch(sourceClientProvider(MBConsts.mangairoBaseUrl)),
    ),
    MangakakalotDatasource(
      client: ref.watch(sourceClientProvider(MBConsts.mangakakalotBaseUrl)),
    ),
    ManganatoDatasource(
      client: ref.watch(sourceClientProvider(MBConsts.manganatoBaseUrl)),
    ),
  ];
});
