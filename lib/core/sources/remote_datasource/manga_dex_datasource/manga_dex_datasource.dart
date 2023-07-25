import 'package:flutter_manga_reader/core/http_client/http_client.dart';
import 'package:flutter_manga_reader/core/models/manga.dart';
import 'package:flutter_manga_reader/core/models/result.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_dex_datasource/models/manga_dex_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_dex_datasource.g.dart';

class MangaDexDatasource implements MangaDatasource {
  MangaDexDatasource({
    required RestClient restClient,
  }) : _restClient = restClient;

  final RestClient _restClient;

  @override
  Future<Result<List<Manga>, HttpError>> fetchMangas() async {
    final result = await _restClient.send(
      method: HttpMethod.get,
      pathSegments: ['manga'],
    ).decode(MangaDexResponse.fromJson);

    return result.when(
      success: (response) => Result.success(response.mangas),
      failure: Result.failure,
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
