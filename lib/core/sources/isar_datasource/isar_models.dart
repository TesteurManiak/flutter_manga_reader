import 'package:isar/isar.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'isar_models.g.dart';

@collection
class IsarManga {
  Id? id;
  late String title;
  late String url;
  String? description;
  String? author;

  @enumerated
  MangaStatus status = MangaStatus.unknown;

  String? genre;
  bool favorite = false;
  String? source;
  String? lang;
  String? thumbnailUrl;
  bool initialized = false;

  @Backlink(to: 'manga')
  final chapters = IsarLinks<IsarChapter>();
}

@collection
class IsarChapter {
  Id? id;
  late String url;
  late String name;
  DateTime? dateUpload;
  double chapterNumber = -1;
  String? scanlator;
  bool read = false;
  bool bookmark = false;
  int lastPageRead = 0;
  DateTime? dateFetch;
  DateTime? lastModified;

  final manga = IsarLink<IsarManga>();
}
