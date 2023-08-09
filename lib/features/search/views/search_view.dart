import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/features/search/controllers/popular_manga_controller.dart';
import 'package:flutter_manga_reader/features/search/widgets/empty_manga_content.dart';
import 'package:flutter_manga_reader/features/search/widgets/infinite_manga_grid.dart';
import 'package:flutter_manga_reader/features/search/widgets/source_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key});

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView>
    with AutomaticKeepAliveClientMixin {
  late final MangaDatasource datasource;

  @override
  void initState() {
    super.initState();

    datasource = ref.read(mangaDatasourceProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(popularMangaControllerProvider(datasource).notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final provider = popularMangaControllerProvider(datasource);
    final state = ref.watch(provider);

    return Scaffold(
      appBar: SourceAppBar(title: datasource.name),
      body: state.map(
        loading: (_) => const LoadingContent(),
        loaded: (loaded) {
          return InfiniteMangaGrid(
            mangas: loaded.mangas,
            fetchMore: () => ref.read(provider.notifier).fetchNext(),
          );
        },
        empty: (_) => const EmptyMangaContent(),
        error: (_) => const ErrorContent(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
