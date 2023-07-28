import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class IsarDatasource implements LocalDatasource {
  @override
  Future<Manga?> getManga(String mangaId) {
    // TODO(Guillaume): implement getManga
    throw UnimplementedError();
  }

  @override
  Future<void> saveManga(Manga manga) {
    // TODO(Guillaume): implement saveManga
    throw UnimplementedError();
  }

  @override
  Future<void> saveMangas(List<Manga> mangas) {
    // TODO(Guillaume): implement saveMangas
    throw UnimplementedError();
  }

  @override
  Future<void> updateManga(Manga manga) {
    // TODO(Guillaume): implement updateManga
    throw UnimplementedError();
  }

  @override
  Stream<List<Manga>> watchMangasInLibrary() {
    // TODO(Guillaume): implement watchMangasInLibrary
    throw UnimplementedError();
  }
}
