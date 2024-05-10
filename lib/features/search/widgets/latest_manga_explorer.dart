import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/features/search/controllers/latest_manga_controller.dart';
import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/widgets/empty_manga_content.dart';
import 'package:flutter_manga_reader/features/search/widgets/infinite_manga_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LatestMangaExplorer extends ConsumerStatefulWidget {
  const LatestMangaExplorer({super.key});

  @override
  ConsumerState<LatestMangaExplorer> createState() =>
      _LatestMangaExplorerState();
}

class _LatestMangaExplorerState extends ConsumerState<LatestMangaExplorer> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final mangaDatasource = ref.read(scopedMangaDatasourceProvider);
      ref.read(latestMangaControllerProvider(mangaDatasource).notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final mangaDatasource = ref.watch(scopedMangaDatasourceProvider);
    final provider = latestMangaControllerProvider(mangaDatasource);
    final state = ref.watch(provider);

    return switch (state) {
      PaginatedMangaLoading() => const LoadingContent(),
      PaginatedMangaLoaded(:final mangas) => InfiniteMangaGrid(
          fetchMore: () => ref.read(provider.notifier).fetchNext(),
          mangas: mangas,
        ),
      PaginatedMangaEmpty() => const EmptyMangaContent(),
      PaginatedMangaError() => const ErrorContent(),
    };
  }
}
