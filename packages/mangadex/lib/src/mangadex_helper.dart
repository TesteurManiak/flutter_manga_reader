import 'package:collection/collection.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/extensions/map_extensions.dart';
import 'package:mangadex/src/extensions/string_extensions.dart';
import 'package:mangadex/src/models/aggregate.dart';
import 'package:mangadex/src/models/chapter.dart';
import 'package:mangadex/src/models/manga.dart';
import 'package:mangadex/src/models/relationship.dart';
import 'package:mangadex/src/models/user.dart';

class MangadexHelper {
  const MangadexHelper();

  static final titleSpecialCharactersRegex = RegExp('[^a-z0-9]+');
  static final trailingHyphenRegex = RegExp(r'-+$');

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

  SourceManga createBasicManga({
    required String sourceId,
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

    return SourceManga(
      url: '/manga/${mangaData.id}',
      sourceId: sourceId,
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

  SourceManga createManga({
    required String sourceId,
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
      if (publicationDemographic != null &&
          publicationDemographic != PublicationDemographic.none)
        publicationDemographic.name.capitalizeFirst(),
      if (contentRating != null && contentRating != ContentRating.safe)
        contentRating.name.capitalizeFirst(),
      if (originalLanguage != null) originalLanguage.toLocalized(),
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

    final genresMap =
        groupBy(attr.tags, (tag) => tag.attributes.group).groupSort(
      (a, b) {
        final nameA = a.attributes.name.getDisplayName(lang);
        final nameB = b.attributes.name.getDisplayName(lang);

        if (nameA == null && nameB == null) {
          return 0;
        } else if (nameA == null) {
          return 1;
        } else if (nameB == null) {
          return -1;
        }

        return nameA.compareTo(nameB);
      },
    );

    final genreList = <String>[];
    for (final group in MDConstants.tagGroupsOrder) {
      final genres = genresMap[group]
          ?.map((e) => e.attributes.name.getDisplayName(lang))
          .whereType<String>();

      if (genres != null && genres.isNotEmpty) genreList.addAll(genres);
    }
    genreList.addAll(nonGenres);

    final desc =
        attr.description.getDisplayName(lang)?.removeEntitiesAndMarkdown();

    return createBasicManga(
      sourceId: sourceId,
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

  SourceChapter createChapter(ChapterData chapterData) {
    final attr = chapterData.attributes;
    final groups = chapterData.relationships
        .whereType<ScanlationGroupRelationship>()
        .whereNot((e) => e.id == MDConstants.legacyNoGroupId)
        .map((e) => e.attributes?.name)
        .whereType<String>()
        .join(' & ')
        .ifEmpty(() {
      // Fallback to uploader name if no group is set.
      final users = chapterData.relationships
          .whereType<UserRelationship>()
          .map((e) => e.attributes)
          .whereType<UserAttributes>()
          .map((e) => e.username);
      return users.isNotEmpty ? 'Uploaded by ${users.join(' & ')}' : '';
    }).ifEmpty(() {
      // "No Group" as final resort
      return 'No Group';
    });

    final title = attr.title;
    final titleNotEmpty = title != null && title.isNotEmpty;
    final chapterName = <String>[
      if (attr.volume.isNotNullOrEmpty) 'Vol.${attr.volume}',
      if (attr.chapter.isNotNullOrEmpty) 'Ch.${attr.chapter}',
      if (titleNotEmpty) ...[
        if (attr.volume.isNotNullOrEmpty || attr.chapter.isNotNullOrEmpty) '-',
        title,
      ],
    ];

    // If volume, chapter and title is empty its a oneshot.
    if (chapterName.isEmpty) {
      chapterName.add('Oneshot');
    }

    return SourceChapter(
      url: '/chapter/${chapterData.id}',
      name: chapterName.join(' ').removeEntitiesAndMarkdown(),
      dateUpload: _parseDate(attr.publishAt),
      scanlator: groups,
    );
  }

  DateTime _parseDate(String dateAsString) {
    try {
      return MDConstants.dateFormatter.parse(dateAsString).toUtc();
    } catch (_) {
      return DateTime.now().toUtc();
    }
  }

  String titleToSlug(String title) {
    return title
        .trim()
        .toLowerCase()
        .replaceAll(titleSpecialCharactersRegex, '-')
        .replaceAll(trailingHyphenRegex, '')
        .split('-')
        .reduce((accumulator, element) {
      final currentSlug = '$accumulator-$element';
      return currentSlug.length > 100 ? accumulator : currentSlug;
    });
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

extension on LocalizedString {
  String? getDisplayName(String lang) {
    return this[lang] ?? this['en'] ?? values.firstOrNull;
  }
}

extension on String {
  String capitalizeFirst() {
    if (length <= 1) return toUpperCase();
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
