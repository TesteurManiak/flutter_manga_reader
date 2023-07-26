import 'package:manga_reader_core/src/models/manga.dart';

abstract class PaginatedResponse<T> {
  const PaginatedResponse({
    required this.data,
    required this.hasMore,
  });

  final List<T> data;
  final bool hasMore;
}

class MangasPage extends PaginatedResponse<Manga> {
  const MangasPage({
    required super.data,
    required super.hasMore,
  });

  List<Manga> get mangas => data;
}
