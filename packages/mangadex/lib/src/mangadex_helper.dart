import 'package:collection/collection.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/extensions/map_extensions.dart';
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
    final title = (dirtyTitle?.trim() ?? '').removeEntitiesAndMarkdown();

    return Manga(
      id: mangaData.id,
      url: '/manga/${mangaData.id}',
      title: title,
      thumbnailUrl: coverFileName != null
          ? switch (coverSuffix != null && coverSuffix.isNotEmpty) {
              true =>
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

    final genresMap = groupBy(attr.tags, (tag) => tag.attributes.group)
        .groupSort((a, b) => a.attributes.group.compareTo(b.attributes.group));

    final genreList = <String>[];
    for (final group in MDConstants.tagGroupsOrder) {
      final genres = genresMap[group]?.map((e) => e.attributes.group);
      if (genres != null && genres.isNotEmpty) {
        genreList.addAll(genres);
      }
    }
    genreList.addAll(nonGenres);

    final desc = (attr.description[lang] ?? attr.description['en'])
        ?.removeEntitiesAndMarkdown();

    return createBasicManga(
      mangaData: mangaData,
      coverFileName: coverFileName,
      coverSuffix: coverSuffix,
      lang: lang,
    ).copyWith(
      author: authors.join(', '),
      artist: artists.join(', '),
      genre: genreList.where((e) => e.isNotEmpty).join(', '),
      description: desc,
      status: getPublicationStatus(attr, chapters),
    );
  }

  MangaStatus getPublicationStatus(
    MangaAttributes attr,
    Map<String, AggregateVolume> volumes,
  ) {
    final chapterList = volumes.values
        .expand((e) => e.chapters.values)
        .map((e) => e.chapter)
        .toList();

    final tmpStatus = switch (attr.status) {
      Status.ongoing => MangaStatus.ongoing,
      Status.cancelled => MangaStatus.cancelled,
      Status.completed => MangaStatus.publishingFinished,
      Status.hiatus => MangaStatus.onHiatus,
      _ => MangaStatus.unknown,
    };

    final publishedOrCancelled = tmpStatus.publishedOrCancelled;
    final isOneShot = attr.isOneShot;

    return switch (chapterList) {
      _ when chapterList.contains(attr.lastChapter) && publishedOrCancelled =>
        MangaStatus.publishingFinished,
      _ when isOneShot && volumes['none']?.chapters['none'] != null =>
        MangaStatus.completed,
      _ => tmpStatus,
    };
  }
}

extension on MangaStatus {
  bool get publishedOrCancelled {
    return this == MangaStatus.publishingFinished ||
        this == MangaStatus.cancelled;
  }
}

extension on MangaAttributes {
  /// Should return true if one of the tag's id is [MDConstants.tagOneShotUuid]
  /// but only if no tag [MDConstants.tagAnthologyUuid] is found.
  bool get isOneShot {
    bool oneShot = false;
    for (final tag in tags) {
      if (tag.id == MDConstants.tagOneShotUuid) {
        oneShot = true;
      } else if (tag.id == MDConstants.tagAnthologyUuid) {
        return false;
      }
    }
    return oneShot;
  }
}
