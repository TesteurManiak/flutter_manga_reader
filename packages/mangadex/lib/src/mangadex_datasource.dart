import 'package:collection/collection.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/extensions/string_extensions.dart';
import 'package:mangadex/src/mangadex_helper.dart';
import 'package:mangadex/src/models/cover.dart';
import 'package:mangadex/src/models/cover_list_response.dart';
import 'package:mangadex/src/models/manga.dart';
import 'package:mangadex/src/models/manga_response.dart';

class MangadexDatasource extends MangaDatasource {
  MangadexDatasource({
    required super.lang,
    required String dexLang,
    RestClient? restClient,
  })  : _dexLang = dexLang,
        _helper = const MangadexHelper(),
        super(
          restClient: restClient ??
              RestClient(
                baseUri: Uri.parse(MDConstants.apiUrl),
              ),
        );

  final String _dexLang;
  final MangadexHelper _helper;

  // TODO(Guillaume): implements preferences

  @override
  Future<Result<MangasPage, HttpError>> fetchPopularMangas(int page) async {
    final result = await restClient.send(
      method: HttpMethod.get,
      pathSegments: [MDConstants.manga],
      queryParameters: {
        'order[followedCount]': 'desc',
        'availableTranslatedLanguage[]': _dexLang,
        'limit': MDConstants.mangaLimit,
        'offset': _helper.getMangaListOffset(page),
        'includes[]': MDConstants.coverArt,
        // 'contentRating[]': preferences.contentRating,
        // 'originalLanguage[]': preferences.originalLanguage,
      },
    ).decode(MangaResponse.fromJson);

    return result.when(
      success: (response) async {
        final hasMore = response.limit + response.offset < response.total;
        final firstVolumeCovers = await _fetchFirstVolumeCovers(response.data);

        final mangaList = response.data.map((manga) {
          final fileName = firstVolumeCovers?[manga.id];
          return _helper.createBasicManga(
            mangaData: manga,
            coverFileName: fileName,
            lang: _dexLang,
          );
        }).toList();

        return Result.success(
          MangasPage(mangaList: mangaList, hasMore: hasMore),
        );
      },
      failure: Result.failure,
    );
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
        return !originalLanguage.isNullOrEmpty;
      }),
    );
    final locales = mangaList
        .map((manga) => manga.attributes.originalLanguage)
        .whereType<String>()
        .toSet();
    final limit = (mangaMap.length * locales.length).clamp(1, 100);

    final result = await restClient.send(
      method: HttpMethod.get,
      pathSegments: ['cover'],
      queryParameters: {
        'order[volume]': 'asc',
        'manga[]': mangaMap.keys,
        'locales[]': locales,
        'limit': limit,
        'offset': '0',
      },
    ).decode(CoverListResponse.fromJson);

    return result.when(
      success: (response) {
        final covers = response.data;

        final coverMap = groupBy(
          covers,
          (cover) {
            return cover.relationships
                .where((rel) => rel.isManga)
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
                    .where((rel) => rel.isManga)
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
}

extension<K, V extends Object?> on Map<K, V> {
  Map<K2, V> whereKeyType<K2>() {
    final newMap = <K2, V>{};
    for (final entry in entries) {
      final key = entry.key;
      if (key is K2) newMap[key] = entry.value;
    }

    return newMap;
  }

  Map<K, V2> whereValueType<V2>() {
    final newMap = <K, V2>{};
    for (final entry in entries) {
      final value = entry.value;
      if (value is V2) newMap[entry.key] = value;
    }

    return newMap;
  }
}
