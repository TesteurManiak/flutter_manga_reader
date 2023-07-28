import 'package:flutter_manga_reader/core/models/isar_entity.dart';
import 'package:isar/isar.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'isar_chapter.g.dart';

@collection
class IsarChapter extends IsarEntity<Chapter> {
  IsarChapter({
    required this.url,
    required this.name,
  });

  factory IsarChapter.fromModel(Chapter model) {
    return IsarChapter(
      url: model.url,
      name: model.name,
    );
  }

  final String url;
  final String name;

  @override
  Chapter toModel() {
    return Chapter(
      url: url,
      name: name,
    );
  }
}
