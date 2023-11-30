import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/controllers/popular_manga_controller.dart';
import 'package:flutter_manga_reader/features/search/widgets/empty_manga_content.dart';
import 'package:flutter_manga_reader/features/search/widgets/infinite_manga_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopularMangaExplorer extends ConsumerStatefulWidget {
  const PopularMangaExplorer({super.key});

  @override
  ConsumerState<PopularMangaExplorer> createState() =>
      _PopularMangaExplorerState();
}

class _PopularMangaExplorerState extends ConsumerState<PopularMangaExplorer> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final datasource = ref.read(mangaDatasourceProvider);
      ref.read(popularMangaControllerProvider(datasource).notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final mangaDatasource = ref.watch(mangaDatasourceProvider);
    final provider = popularMangaControllerProvider(mangaDatasource);
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
