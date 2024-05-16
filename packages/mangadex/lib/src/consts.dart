import 'package:intl/intl.dart';

class MDConstants {
  const MDConstants._();

  static const sourceName = 'MangaDex';

  static final uuidRegex = RegExp(
    '[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}',
  );

  static const mangaLimit = 20;
  static const latestChapterLimit = 100;

  /// "chapter"
  static const chapter = 'chapter';

  /// "manga"
  static const manga = 'manga';

  /// "cover_art"
  static const coverArt = 'cover_art';

  /// "scanlation_group"
  static const scanlationGroup = 'scanlation_group';
  static const user = 'user';
  static const author = 'author';
  static const artist = 'artist';
  static const legacyNoGroupId = '00e03853-1b96-4f41-9542-c71b8692033b';

  static const cdnUrl = 'https://uploads.mangadex.org';
  static const apiUrl = 'https://api.mangadex.org';

  static final dateFormatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss+SSS", 'en_US');

  static const _tagGroupContent = 'content';
  static const _tagGroupFormat = 'format';
  static const _tagGroupGenre = 'genre';
  static const _tagGroupTheme = 'theme';
  static const tagGroupsOrder = [
    _tagGroupContent,
    _tagGroupFormat,
    _tagGroupGenre,
    _tagGroupTheme,
  ];

  static const tagAnthologyUuid = '51d83883-4103-437c-b4b1-731cb73d786c';
  static const tagOneShotUuid = '0234a31e-a729-4e28-9d6a-3f87c4966b9e';
}
