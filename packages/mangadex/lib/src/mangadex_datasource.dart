import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:mangadex/src/consts.dart';
import 'package:mangadex/src/mangadex_helper.dart';
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
  Future<Result<MangasPage, HttpError>> fetchMangas() async {
    // TODO: implement fetchMangas
    throw UnimplementedError();
  }

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
      success: (response) {
        final hasMore = response.limit + response.offset < response.total;

        return Result.success(
          MangasPage(
            mangaList: response.data.map<Manga>((e) => e.toModel()).toList(),
            hasMore: hasMore,
          ),
        );
      },
      failure: Result.failure,
    );
  }
}
