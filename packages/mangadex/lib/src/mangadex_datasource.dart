import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/extensions/map_extensions.dart';
import 'package:mangadex/src/mangadex_helper.dart';
import 'package:mangadex/src/models/aggregate.dart';
import 'package:mangadex/src/models/at_home.dart';
import 'package:mangadex/src/models/chapter.dart';
import 'package:mangadex/src/models/cover.dart';
import 'package:mangadex/src/models/manga.dart';
import 'package:mangadex/src/models/relationship.dart';

/// {@template mangadex_datasource}
/// Mangadex datasource.
///
/// Fetches manga from the [Mangadex](https://mangadex.org) API.
///
/// Credits to the contributors to the Tachiyomi project for their work on the
/// [original implementation](https://github.com/tachiyomiorg/tachiyomi-extensions/tree/master/src/all/mangadex).
/// {@endtemplate}
class MangadexDatasource extends MangaDatasource {
  /// {@macro mangadex_datasource}
  MangadexDatasource({
    required super.lang,
    String? dexLang,
    RestClient? client,
  })  : _dexLang = dexLang ?? lang,
        _helper = const MangadexHelper(),
        _client = client ?? RestClient(baseUri: Uri.parse(MDConstants.apiUrl)),
        super(
          name: MDConstants.sourceName,
          baseUrl: 'https://mangadex.org',
        );

  final String _dexLang;
  final MangadexHelper _helper;
  final RestClient _client;

  Map<String, String>? _headersBuilder() {
    return {'Referer': '$baseUrl/'};
  }

  @override
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page) async {
    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: [MDConstants.manga],
          headers: _headersBuilder(),
          queryParameters: {
            'order[followedCount]': 'desc',
            'availableTranslatedLanguage[]': _dexLang,
            'limit': MDConstants.mangaLimit,
            'offset': _helper.getMangaListOffset(page),
            'includes[]': MDConstants.coverArt,
          },
        )
        .decode(MangaListResponse.fromJson);

    return result.when(
      success: (response) async {
        final mangaList = await _parseMangas(response.data);

        return Result.success(
          MangasPage(mangaList: mangaList, hasMore: response.hasMore),
        );
      },
      failure: Result.failure,
    );
  }

  Future<List<SourceManga>> _parseMangas(List<MangaData> data) async {
    final firstVolumeCovers = await _fetchFirstVolumeCovers(data);

    return data.map((manga) {
      final fileName = firstVolumeCovers?[manga.id];
      return _helper.createBasicManga(
        mangaData: manga,
        coverFileName: fileName,
        lang: _dexLang,
      );
    }).toList();
  }

  /// Attempt to get the first volume cover.
  ///
  /// Uses the 'covers' endpoint.
  Future<Map<String, String>?> _fetchFirstVolumeCovers(
    List<MangaData> mangaList,
  ) async {
    if (mangaList.isEmpty) return null;

    final mangaMap = Map<String, MangaAttributes>.fromEntries(
      mangaList.map((e) => MapEntry(e.id, e.attributes)).where((e) {
        final originalLanguage = e.value.originalLanguage;
        return originalLanguage != null && originalLanguage.isNotEmpty;
      }),
    );
    final locales = mangaList
        .map((manga) => manga.attributes.originalLanguage)
        .whereType<String>()
        .toSet();
    final limit = (mangaMap.length * locales.length).clamp(1, 100);

    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: ['cover'],
          headers: _headersBuilder(),
          queryParameters: {
            'order[volume]': 'asc',
            'manga[]': mangaMap.keys,
            'locales[]': locales,
            'limit': limit,
            'offset': '0',
          },
        )
        .decode(CoverListResponse.fromJson);

    return result.when(
      success: (response) {
        final covers = response.data;

        final coverMap = groupBy(
          covers,
          (cover) {
            return cover.relationships
                .whereType<MangaRelationship>()
                .firstOrNull
                ?.id;
          },
        ).whereKeyType<String>();

        final filteredCoverMap = coverMap.map(
          (k, v) {
            return MapEntry(
              k,
              v.firstWhereOrNull((cover) {
                final id = v.first.relationships
                    .whereType<MangaRelationship>()
                    .firstOrNull
                    ?.id;

                if (id == null) return false;

                return cover.attributes?.locale ==
                    mangaMap[id]?.originalLanguage;
              }),
            );
          },
        ).whereValueType<CoverArt>();

        final fileNameMap = filteredCoverMap.map((k, v) {
          final fileName = v.attributes?.fileName;

          if (fileName != null && fileName.isEmpty) return MapEntry(k, null);
          return MapEntry(k, v.attributes?.fileName);
        }).whereValueType<String>();

        if (fileNameMap.isEmpty) return null;

        return fileNameMap;
      },
      failure: (_) => null,
    );
  }

  @override
  Future<Result<MangasPage, HttpError>> fetchLatestUpdatedMangas(
    int page,
  ) async {
    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: [MDConstants.chapter],
          headers: _headersBuilder(),
          queryParameters: {
            'offset': _helper.getLatestChapterOffset(page),
            'limit': MDConstants.latestChapterLimit,
            'translatedLanguage[]': _dexLang,
            'order[publishAt]': 'desc',
            'includeFutureUpdates': '0',
            'includeFuturePublishAt': '0',
            'includeEmptyPages': '0',
          },
        )
        .decode(ChapterResponse.fromJson);

    return result.when(
      success: (response) async {
        final mangaList = await _parseLatestUpdate(response.data);

        return Result.success(
          MangasPage(
            mangaList: mangaList,
            hasMore: response.hasMore,
          ),
        );
      },
      failure: Result.failure,
    );
  }

  Future<List<SourceManga>> _parseLatestUpdate(List<ChapterData> data) async {
    final mangaIds = data
        .map((chapter) {
          return chapter.relationships
              .whereType<MangaRelationship>()
              .firstOrNull
              ?.id;
        })
        .whereType<String>()
        .toSet();

    if (mangaIds.isEmpty) return [];

    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: ['manga'],
          headers: _headersBuilder(),
          queryParameters: {
            'includes[]': MDConstants.coverArt,
            'limit': mangaIds.length,
            'ids[]': mangaIds,
          },
        )
        .decode(MangaListResponse.fromJson);

    return result.when(
      success: (response) async {
        final firstVolumeCovers = await _fetchFirstVolumeCovers(response.data);
        final mangaMap = Map<String, MangaData>.fromEntries(
          response.data.map((manga) => MapEntry(manga.id, manga)),
        );

        final mangaList = <SourceManga>[];
        for (final id in mangaIds) {
          final manga = mangaMap[id];
          if (manga == null) continue;

          final fileName = firstVolumeCovers?[manga.id];
          mangaList.add(
            _helper.createBasicManga(
              mangaData: manga,
              coverFileName: fileName,
              lang: _dexLang,
            ),
          );
        }

        return mangaList;
      },
      failure: (_) => [],
    );
  }

  @override
  Future<Result<MangasPage, HttpError>> searchMangaList(
    int page,
    String query,
  ) async {
    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: [MDConstants.manga],
          headers: _headersBuilder(),
          queryParameters: {
            'title': query,
            'limit': MDConstants.mangaLimit,
            'offset': _helper.getMangaListOffset(page),
            'includes[]': MDConstants.coverArt,
          },
        )
        .decode(MangaListResponse.fromJson);

    return result.when(
      success: (response) async {
        final mangaList = await _parseMangas(response.data);

        return Result.success(
          MangasPage(mangaList: mangaList, hasMore: response.hasMore),
        );
      },
      failure: Result.failure,
    );
  }

  /// Fetch the chapters for a manga.
  @override
  Future<Result<Manga, HttpError>> fetchMangaDetails(Manga manga) async {
    if (!_helper.containsUuid(manga.url.trim())) {
      return const Result.failure(HttpError(message: 'Invalid manga format'));
    }

    final result = await _client.send(
      method: HttpMethod.get,
      pathSegments: manga.pathSegments,
      headers: _headersBuilder(),
      queryParameters: {
        'includes[]': [
          MDConstants.coverArt,
          MDConstants.author,
          MDConstants.artist,
        ],
      },
    ).decode(MangaResponse.fromJson);

    return result.when(
      success: (response) async {
        final mangaData = response.data;
        final chapters = await _fetchSimpleChapterList(mangaData, _dexLang);
        final firstVolumeCover = await _fetchFirstVolumeCover(mangaData);

        return Result.success(
          _helper
              .createManga(
                mangaData: response.data,
                chapters: chapters,
                firstVolumeCover: firstVolumeCover,
                lang: _dexLang,
              )
              .toModel(manga),
        );
      },
      failure: Result.failure,
    );
  }

  /// Get a quick-n-dirty list of the chapters to be used in determining the
  /// manga status.
  ///
  /// Uses the 'aggregate' endpoint.
  Future<Map<String, AggregateVolume>> _fetchSimpleChapterList(
    MangaData mangaData,
    String langCode,
  ) async {
    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: [
            mangaData.id,
            'aggregate',
          ],
          headers: _headersBuilder(),
          queryParameters: {'translatedLanguage[]': langCode},
        )
        .decode(AggregateResponse.fromJson);

    return result.when(
      success: (response) => response.volumes ?? {},
      failure: (_) => {},
    );
  }

  /// Attempt to get the first volume cover if the setting is enabled.
  ///
  /// Uses the 'covers' endpoint.
  Future<String?> _fetchFirstVolumeCover(MangaData mangaData) async {
    return _fetchFirstVolumeCovers([mangaData])
        .then((value) => value?[mangaData.id]);
  }

  @override
  Future<Result<List<SourceChapter>, HttpError>> fetchChapters(
    SourceManga sourceManga,
  ) async {
    if (!_helper.containsUuid(sourceManga.url.trim())) {
      return const Result.failure(HttpError(message: 'Invalid manga format'));
    }

    return _fetchPaginatedChapterList(
      mangaId: _helper.getUuidFromUrl(sourceManga.url),
      offset: 0,
    ).then((value) {
      return Result.success(
        value.data.mapIndexed<SourceChapter>(_helper.createChapter).toList(),
      );
    });
  }

  /// Fetch a paginated list of chapters for a manga.
  ///
  /// Required because the chapter list API endpoint is paginated.
  Future<ChapterResponse> _fetchPaginatedChapterList({
    required String mangaId,
    required int offset,
  }) async {
    final result = await _client
        .send(
          method: HttpMethod.get,
          pathSegments: [MDConstants.manga, mangaId, 'feed'],
          headers: _headersBuilder(),
          queryParameters: {
            'includes[]': [
              MDConstants.scanlationGroup,
              MDConstants.user,
            ],
            'limit': 500,
            'offset': offset,
            'translatedLanguage[]': _dexLang,
            'order[volume]': 'desc',
            'order[chapter]': 'desc',
            'includeFuturePublishAt': '0',
            'includeEmptyPages': '0',
            'contentRating[]': ContentRating.values.map((e) => e.name),
          },
        )
        .decode(ChapterResponse.fromJson);

    return result.when(
      success: (response) async {
        int newOffset = response.offset;
        bool hasNextPage = response.hasMore;

        final fullChapterList = List<ChapterData>.from(response.data);

        while (hasNextPage) {
          newOffset += response.limit;

          final newResult = await _fetchPaginatedChapterList(
            mangaId: mangaId,
            offset: newOffset,
          );
          fullChapterList.addAll(newResult.data);

          hasNextPage = newResult.hasMore;
        }

        return ChapterResponse(
          data: fullChapterList,
          offset: newOffset,
          total: fullChapterList.length,
        );
      },
      failure: (_) => ChapterResponse(offset: offset),
    );
  }

  @override
  Future<Result<List<ChapterPage>, HttpError>> fetchChapterPages(
    SourceChapter chapter,
  ) async {
    if (!_helper.containsUuid(chapter.url)) {
      return const Result.failure(HttpError(message: 'Invalid chapter format'));
    }

    final chapterId = chapter.url.split('/chapter/').last;
    final requestUri = Uri.parse(MDConstants.apiUrl).replace(
      pathSegments: ['at-home', 'server', chapterId],
    );
    final result = await _client
        .send(
          method: HttpMethod.get,
          headers: _headersBuilder(),
          pathSegments: requestUri.pathSegments,
        )
        .decode(AtHome.fromJson);

    return result.when(
      success: (atHome) {
        final atHomeRequestUrl = requestUri.toString();
        final host = atHome.baseUrl;
        final now = clock.now();
        final hash = atHome.chapter.hash;
        final pageSuffix =
            atHome.chapter.data.map((e) => '$host/data/$hash/$e');

        return Result.success(
          pageSuffix.mapIndexed((index, imgUrl) {
            final mdAtHomeMetadataUrl = '$host,$atHomeRequestUrl,$now';

            return ChapterPage(
              index: index,
              url: mdAtHomeMetadataUrl,
              imageUrl: imgUrl,
            );
          }).toList(),
        );
      },
      failure: Result.failure,
    );
  }
}

extension on Manga {
  List<String> get pathSegments {
    return url.split('/').where((e) => e.trim().isNotEmpty).toList();
  }
}

extension on SourceManga {
  Manga toModel(Manga base) {
    return base.copyWith(
      title: title,
      url: url,
      description: description,
      author: author,
      status: status,
      genre: genre,
      source: source,
      lang: lang,
      artist: artist,
      thumbnailUrl: thumbnailUrl,
    );
  }
}
