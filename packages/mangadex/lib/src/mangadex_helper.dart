import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/extensions/string_extensions.dart';
import 'package:mangadex/src/models/manga.dart';

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
    return (MDConstants.latestChapterLimit * (page - 1)).toString();
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
}
