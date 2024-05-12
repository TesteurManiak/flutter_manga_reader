import 'package:flutter_manga_reader/core/sources/remote_datasource/http_clients.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangabox/mangabox.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mangabox.g.dart';

@Riverpod(keepAlive: true)
List<MangaDatasource> mangabox(MangaboxRef ref) {
  return [
    MangabatDatasource(
      client: RestClient(
        baseUri: Uri.parse(MBConsts.mangabatBaseUrl),
        httpClient: ref.watch(cacheClientProvider),
      ),
    ),
    MangakakalotDatasource(
      client: RestClient(
        baseUri: Uri.parse(MBConsts.mangakakalotBaseUrl),
        httpClient: ref.watch(cacheClientProvider),
      ),
    ),
  ];
}
