import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/search/controllers/filtered_manga_controller.dart';
import 'package:flutter_manga_reader/features/search/controllers/paginated_manga_state.dart';
import 'package:flutter_manga_reader/features/search/widgets/empty_manga_content.dart';
import 'package:flutter_manga_reader/features/search/widgets/infinite_manga_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilteredMangaExplorer extends ConsumerWidget {
  const FilteredMangaExplorer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mangaDatasource = ref.watch(mangaDatasourceProvider);
    final provider = filteredMangaControllerProvider(mangaDatasource);
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
