import 'package:mangadex/mangadex.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_dex_datasource.g.dart';

@riverpod
MangadexDatasource mangadexDatasource(MangadexDatasourceRef ref) {
  // TODO(Guillaume): manage multi lang
  return MangadexDatasource(
    lang: 'en',
    dexLang: 'en',
  );
}
