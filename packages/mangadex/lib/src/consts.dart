class MDConstants {
  const MDConstants._();

  static final uuidRegex = RegExp(
    '[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}',
  );

  static const mangaLimit = 20;
  static const latestChapterLimit = 100;

  static const chapter = 'chapter';
  static const manga = 'manga';
  static const coverArt = 'cover_art';
  static const scanlationGroup = 'scanlation_group';
  static const user = 'user';
  static const author = 'author';
  static const artist = 'artist';

  static const cdnUrl = 'https://uploads.mangadex.org';
  static const apiUrl = 'https://api.mangadex.org';
}
