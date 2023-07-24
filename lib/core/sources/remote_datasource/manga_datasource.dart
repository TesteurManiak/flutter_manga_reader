import 'package:flutter_manga_reader/core/models/manga.dart';

abstract class MangaDatasource {
  Future<List<Manga>> fetchMangas();
}
