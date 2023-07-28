import 'package:flutter_manga_reader/core/providers/locale_controller.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@riverpod
MangaDatasource mangaDatasource(MangaDatasourceRef ref) {
  final languageCode = ref.watch(
    localeControllerProvider.select((locale) => locale.languageCode),
  );

  return MangadexDatasource(
    lang: languageCode,
    dexLang: languageCode,
  );
}
