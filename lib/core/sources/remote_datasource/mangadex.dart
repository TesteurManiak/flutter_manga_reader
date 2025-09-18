import 'package:flutter_manga_reader/core/sources/remote_datasource/http_clients.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';

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

final mangadexProvider = Provider<List<MangaDatasource>>((Ref ref) {
  final client = ref.watch(sourceClientProvider(MDConstants.apiUrl));

  return [
    MangadexDatasource(lang: 'en', client: client),
    MangadexDatasource(lang: 'fr', client: client),
  ];
});
