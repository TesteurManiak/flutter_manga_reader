part of '../app_database.dart';

@TableIndex(name: 'manga_favorite', columns: {#favorite})
class DbMangas extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get sourceId => text()();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
  IntColumn get fetchInterval => integer().withDefault(const Constant(0))();
  DateTimeColumn get dateAdded => dateTime().nullable()();
  TextColumn get url => text()();
  TextColumn get title => text()();
  TextColumn get artist => text().nullable()();
  TextColumn get author => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get genre => text().nullable()();
  IntColumn get status =>
      intEnum<MangaStatus>().withDefault(const Constant(0))();
  TextColumn get thumbnailUrl => text().nullable()();
  IntColumn get updateStrategy => intEnum<UpdateStrategy>()();
  BoolColumn get initialized => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastModifiedAt => dateTime().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {sourceId, url},
      ];
}

extension DbMangaExtensions on DbManga {
  Manga toModel() {
    return Manga(
      id: id,
      sourceId: sourceId,
      favorite: favorite,
      fetchInterval: fetchInterval,
      dateAdded: dateAdded,
      url: url,
      title: title,
      artist: artist,
      author: author,
      description: description,
      genres: genre?.split(','),
      status: status,
      thumbnailUrl: thumbnailUrl,
      updateStrategy: updateStrategy,
      initialized: initialized,
      lastModifiedAt: lastModifiedAt,
    );
  }
}
