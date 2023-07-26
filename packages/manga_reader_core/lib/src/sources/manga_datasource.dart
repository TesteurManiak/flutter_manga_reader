import 'package:manga_reader_core/src/http_client/http_client.dart';
import 'package:manga_reader_core/src/models/paginated_response.dart';
import 'package:manga_reader_core/src/models/result.dart';

abstract class MangaDatasource {
  const MangaDatasource({
    required this.lang,
    required this.restClient,
  });

  final String lang;
  final RestClient restClient;

  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page);
}
