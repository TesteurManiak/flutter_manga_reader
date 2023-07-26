import 'package:flutter_manga_reader/core/http_client/http_client.dart';
import 'package:flutter_manga_reader/core/models/paginated_response.dart';
import 'package:flutter_manga_reader/core/models/result.dart';

abstract class MangaDatasource {
  Future<Result<MangasPage, HttpError>> fetchMangas();
}
