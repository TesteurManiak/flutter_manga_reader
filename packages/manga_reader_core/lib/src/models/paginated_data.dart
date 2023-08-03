import 'package:manga_reader_core/src/models/source_manga.dart';

abstract class PageData<T> {
  const PageData({
    required this.data,
    required this.hasMore,
  });

  final List<T> data;
  final bool hasMore;
}

class MangasPage extends PageData<SourceManga> {
  const MangasPage({
    required this.mangaList,
    required super.hasMore,
  }) : super(data: mangaList);

  final List<SourceManga> mangaList;
}
