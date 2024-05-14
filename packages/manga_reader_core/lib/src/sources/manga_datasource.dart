import 'package:manga_reader_core/src/http_client/http_client.dart';
import 'package:manga_reader_core/src/models/chapter_page.dart';
import 'package:manga_reader_core/src/models/manga.dart';
import 'package:manga_reader_core/src/models/paginated_data.dart';
import 'package:manga_reader_core/src/models/result.dart';
import 'package:manga_reader_core/src/models/source_chapter.dart';
import 'package:manga_reader_core/src/models/source_manga.dart';

/// {@template manga_datasource}
/// Base interface to fetch manga and chapters from a remote source.
/// {@endtemplate}
abstract class MangaDatasource {
  /// {@macro manga_datasource}
  MangaDatasource({
    required this.lang,
    required this.name,
    required this.baseUrl,
  });

  /// The language of the source.
  final String lang;

  /// The name of the source.
  final String name;

  /// The base url of the source.
  ///
  /// Used to open webview for the source.
  final String baseUrl;

  /// The id of the source.
  String get id;

  /// Fetch the most popular mangas from the source.
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page);

  /// Fetch the latest updated mangas from the source.
  Future<Result<MangasPage, HttpError>> fetchLatestUpdatedMangas(int page);

  /// Query the source for a manga.
  Future<Result<MangasPage, HttpError>> searchMangaList(
    int page,
    String query,
  );

  /// Return the url of the manga in the source.
  ///
  /// Used to open webview for the manga.
  String getMangaUrl(SourceManga sourceManga);

  /// Fetch the details of a manga. (Does not include chapters)
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga);

  /// Fetch the chapters of a manga.
  Future<Result<List<SourceChapter>, HttpError>> fetchChapters(
    SourceManga sourceManga,
  );

  Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
    SourceChapter chapter,
  );

  Map<String, String>? getHeaders() => null;
}
