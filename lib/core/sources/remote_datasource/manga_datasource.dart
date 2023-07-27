import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_datasource.g.dart';

@riverpod
MangaDatasource mangaDatasource(MangaDatasourceRef ref) {
  return MangadexDatasource(
    lang: 'en',
    dexLang: 'en',
  );
}
