import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/extensions/string_extensions.dart';
import 'package:mangadex/src/models/aggregate.dart';
import 'package:mangadex/src/models/manga.dart';
import 'package:mangadex/src/models/relationship.dart';

class MangadexHelper {
  const MangadexHelper();

  /// Gets the UUID from the url.
  String getUuidFromUrl(String url) => url.split('/').last;

  /// Get chapters for manga (aka manga/$id/feed endpoint)
  Uri getChapterEndpoint({
    required String mangaId,
    required int offset,
    required String langCode,
  }) {
    return Uri.parse(MDConstants.apiUrl).replace(
      pathSegments: [MDConstants.manga, mangaId, 'feed'],
      queryParameters: {
        'includes[]': [MDConstants.scanlationGroup, MDConstants.user].join(','),
        'limit': '500',
        'offset': offset.toString(),
        'translatedLanguage[]': langCode,
        'order[volume]': 'desc',
        'order[chapter]': 'desc',
        'includeFuturePublishAt': '0',
        'includeEmptyPages': '0',
      },
    );
  }

  /// Check if the manga url is a valid uuid.
  bool containsUuid(String url) => url.contains(MDConstants.uuidRegex);

  /// Check if the string is a valid uuid.
  bool isUuid(String text) => MDConstants.uuidRegex.hasMatch(text);

  /// Get the manga offset pages are 1 based, so subtract 1.
  String getMangaListOffset(int page) {
    return (MDConstants.mangaLimit * (page - 1)).toString();
  }

  /// Get the latest chapter offset pages are 1 based, so subtract 1.
  String getLatestChapterOffset(int page) {
    return (MDConstants.latestChapterLimit * (page - 1)).toString();
  }

  Manga createBasicManga({
    required MangaData mangaData,
    String? coverFileName,
    String? coverSuffix,
    required String lang,
  }) {
    final titleMap = mangaData.attributes.title;
    final dirtyTitle = titleMap.values.firstOrNull ??
        mangaData.attributes.altTitles
            .firstWhere((e) => e[lang] != null || e['en'] != null)
            .values
            .singleOrNull;
    final title = (dirtyTitle?.trim() ?? '').removeHtmlTags().removeMarkdown();

    return Manga(
      url: '/manga/${mangaData.id}',
      title: title,
      thumbnailUrl: coverFileName != null
          ? switch (coverSuffix.isNullOrEmpty) {
              false =>
                '${MDConstants.cdnUrl}/covers/${mangaData.id}/$coverFileName$coverSuffix',
              _ =>
                '${MDConstants.cdnUrl}/covers/${mangaData.id}/$coverFileName',
            }
          : null,
    );
  }

  Manga createManga({
    required MangaData mangaData,
    required Map<String, AggregateVolume> chapters,
    String? firstVolumeCover,
    required String lang,
    String? coverSuffix,
    bool altTitlesInDesc = false,
  }) {
    final attr = mangaData.attributes;
    final publicationDemographic = attr.publicationDemographic;
    final contentRating = attr.contentRating;
    final originalLanguage = attr.originalLanguage;

    final nonGenres = [
      if (publicationDemographic != null) publicationDemographic.name,
      if (contentRating != null && contentRating != ContentRating.safe)
        contentRating.name,
      if (originalLanguage != null) originalLanguage,
    ];

    final authors = mangaData.relationships
        .whereType<AuthorRelationship>()
        .map((author) => author.attributes?.name)
        .whereType<String>()
        .toSet();

    final artists = mangaData.relationships
        .whereType<ArtistRelationship>()
        .map((artist) => artist.attributes?.name)
        .whereType<String>()
        .toSet();

    final coverFileName = firstVolumeCover ??
        mangaData.relationships
            .whereType<CoverArtRelationship>()
            .firstOrNull
            ?.attributes
            ?.fileName;

    return createBasicManga(mangaData: mangaData, lang: lang).copyWith(
      author: authors.join(', '),
      artist: artists.join(', '),
    );
  }
}
