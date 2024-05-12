import 'package:flutter_manga_reader/core/sources/remote_datasource/http_clients.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mangadex.g.dart';

// TODO(Guillaume): include all supported languages
// const _languages = [
//   "ar",
//   "bn",
//   "bg",
//   "my",
//   "ca",
//   "zh",
//   "zh-hk",
//   "cs",
//   "da",
//   "nl",
//   "en",
//   "tl",
//   "fi",
//   "fr",
//   "de",
//   "el",
//   "he",
//   "hi",
//   "hu",
//   "id",
//   "it",
//   "ja",
//   "kk",
//   "ko",
//   "la",
//   "lt",
//   "ms",
//   "mn",
//   "ne",
//   "no",
//   "fa",
//   "pl",
//   "pt-br",
//   "pt",
//   "ro",
//   "ru",
//   "sh",
//   "es-419",
//   "es",
//   "sv",
//   "ta",
//   "th",
//   "tr",
//   "uk",
//   "vi",
// ];

@Riverpod(keepAlive: true)
List<MangaDatasource> mangadex(MangadexRef ref) {
  final mangadexClient = RestClient(
    baseUri: Uri.parse(MDConstants.apiUrl),
    httpClient: ref.watch(cacheClientProvider),
  );

  return [
    MangadexDatasource(lang: 'en', client: mangadexClient),
    MangadexDatasource(lang: 'fr', client: mangadexClient),
  ];
}
