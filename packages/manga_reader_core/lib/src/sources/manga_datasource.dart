import 'package:manga_reader_core/src/http_client/http_client.dart';
import 'package:manga_reader_core/src/models/manga.dart';
import 'package:manga_reader_core/src/models/paginated_data.dart';
import 'package:manga_reader_core/src/models/result.dart';

abstract class MangaDatasource {
  const MangaDatasource({
    required this.lang,
    required this.name,
  });

  final String lang;
  final String name;

  /// Fetch the most popular mangas from the source.
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page);

  /// Fetch the latest mangas from the source.
  Future<Result<MangasPage, HttpError>> latestUpdatesRequest(int page);

  /// Query the source for a manga.
  Future<Result<MangasPage, HttpError>> fetchSearchManga(
    int page,
    String query,
  );

  /// Fetch the details of a manga.
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga);
}
