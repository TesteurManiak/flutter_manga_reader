import 'package:flutter_manga_reader/core/http_client/http_client.dart';
import 'package:flutter_manga_reader/core/models/manga.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_dex_datasource.g.dart';

class MangaDexDatasource implements MangaDatasource {
  MangaDexDatasource({
    required RestClient restClient,
  }) : _restClient = restClient;

  final RestClient _restClient;

  @override
  Future<List<Manga>> fetchMangas() async {
    await _restClient.send(
      method: HttpMethod.get,
      pathSegments: ['manga'],
    );
  }
}

@riverpod
MangaDexDatasource mangaDexDatasource(MangaDexDatasourceRef ref) {
  return MangaDexDatasource(
    restClient: RestClient(
      baseUri: Uri.parse('https://api.mangadex.org/'),
    ),
  );
}
