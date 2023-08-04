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
  const MangaDatasource({
    required this.lang,
    required this.name,
  });

  /// The language of the source.
  final String lang;

  /// The name of the source.
  final String name;

  /// Fetch the most popular mangas from the source.
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page);

  /// Fetch the latest updated mangas from the source.
  Future<Result<MangasPage, HttpError>> fetchLatestUpdateRequest(int page);

  /// Query the source for a manga.
  Future<Result<MangasPage, HttpError>> fetchSearchManga(
    int page,
    String query,
  );

  /// Fetch the details of a manga. (Does not include chapters)
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga);

  /// Fetch the chapters of a manga.
  Future<Result<List<SourceChapter>, HttpError>> fetchChapters(
    SourceManga sourceManga,
  );

  Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
    SourceChapter chapter,
  );
}
