import 'package:flutter/foundation.dart';
import 'package:flutter_manga_reader/core/models/isar_chapter.dart';
import 'package:flutter_manga_reader/core/models/isar_manga.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:isar/isar.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasource implements LocalDatasource {
  static const _instanceName = 'isar_datasource';

  @protected
  Future<Isar> getInstance() async {
    return Isar.getInstance(_instanceName) ??
        await Isar.open(
          [IsarMangaSchema, IsarChapterSchema],
          directory: (await getApplicationDocumentsDirectory()).path,
          name: _instanceName,
        );
  }

  @override
  Future<Manga?> getManga(String mangaId) async {
    final isar = await getInstance();
    final manga = await isar.isarMangas.getByMangaId(mangaId);
    return manga?.toModel();
  }

  @override
  Future<void> saveManga(Manga manga) async {
    final isar = await getInstance();
    return isar.writeTxn(() {
      return isar.isarMangas.put(IsarManga.fromModel(manga));
    });
  }

  @override
  Future<void> saveMangas(List<Manga> mangas) async {
    final isar = await getInstance();
    return isar.writeTxn(() {
      return isar.isarMangas.putAll(mangas.map(IsarManga.fromModel).toList());
    });
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
