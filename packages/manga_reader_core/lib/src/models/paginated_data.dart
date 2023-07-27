import 'package:manga_reader_core/src/models/manga.dart';

abstract class PageData<T> {
  const PageData({
    required this.data,
    required this.hasMore,
  });

  final List<T> data;
  final bool hasMore;
}

class MangasPage extends PageData<Manga> {
  const MangasPage({
    required this.mangaList,
    required super.hasMore,
  }) : super(data: mangaList);

  final List<Manga> mangaList;
}
