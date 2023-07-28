import 'package:flutter_manga_reader/core/models/isar_entity.dart';
import 'package:isar/isar.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

part 'isar_manga.g.dart';

@collection
class IsarManga extends IsarEntity<Manga> {
  IsarManga({
    required this.mangaId,
    required this.favorite,
    required this.url,
    required this.source,
    required this.title,
    required this.artist,
    required this.author,
    required this.description,
    required this.genre,
    required this.statusIndex,
    required this.thumbnailUrl,
    required this.updateStrategyIndex,
    required this.initialized,
  });

  factory IsarManga.fromModel(Manga model) {
    return IsarManga(
      mangaId: model.id,
      favorite: false,
      url: model.url,
      source: model.source,
      title: model.title,
      artist: model.artist,
      author: model.author,
      description: model.description,
      genre: model.genre,
      statusIndex: model.status.index,
      thumbnailUrl: model.thumbnailUrl,
      updateStrategyIndex: model.updateStrategy.index,
      initialized: model.initialized,
    );
  }

  @Index(unique: true, replace: true)
  final String mangaId;
  final bool favorite;
  final String url;
  final String source;
  final String title;
  final String? artist;
  final String? author;
  final String? description;
  final String? genre;
  final int statusIndex;
  final String? thumbnailUrl;
  final int updateStrategyIndex;
  final bool initialized;

  @override
  Manga toModel() {
    return Manga(
      id: mangaId,
      favorite: favorite,
      url: url,
      source: source,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genre: genre,
      status: MangaStatus.values[statusIndex],
      thumbnailUrl: thumbnailUrl,
      updateStrategy: UpdateStrategy.values[updateStrategyIndex],
      initialized: initialized,
    );
  }
}
