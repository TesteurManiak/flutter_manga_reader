import 'package:flutter_manga_reader/core/http_client/http_client.dart';
import 'package:flutter_manga_reader/core/models/paginated_response.dart';
import 'package:flutter_manga_reader/core/models/result.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_dex_datasource/models/manga_dex_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manga_dex_datasource.g.dart';

class MangaDexDatasource implements MangaDatasource {
  MangaDexDatasource({
    required this.lang,
    required RestClient restClient,
  }) : _restClient = restClient;

  final String lang;
  final RestClient _restClient;

  @override
  Future<Result<MangasPage, HttpError>> fetchMangas() async {
    final result = await _restClient.send(
      method: HttpMethod.get,
      pathSegments: ['manga'],
      queryParameters: {
        'availableTranslatedLanguage': [lang],
      },
    ).decode(MangaDexResponse.fromJson);

    return result.when(
      success: (response) {
        return Result.success(
          MangasPage(
            data: response.mangas,
            hasMore: hasMore,
          ),
        );
      },
      failure: Result.failure,
    );
  }
}

@riverpod
MangaDexDatasource mangaDexDatasource(MangaDexDatasourceRef ref) {
  return MangaDexDatasource(
    lang: 'en', // TODO(Guillaume): manage multi lang
    restClient: RestClient(
      baseUri: Uri.parse('https://api.mangadex.org/'),
    ),
  );
}
