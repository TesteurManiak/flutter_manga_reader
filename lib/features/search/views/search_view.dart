import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/search/widgets/filtered_manga_explorer.dart';
import 'package:flutter_manga_reader/features/search/widgets/latest_manga_explorer.dart';
import 'package:flutter_manga_reader/features/search/widgets/popular_manga_explorer.dart';
import 'package:flutter_manga_reader/features/search/widgets/source_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key});

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView>
    with AutomaticKeepAliveClientMixin {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: SourceAppBar(
        onFilterChanged: (filter) {
          pageController.jumpToPage(filter.index);
        },
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          PopularMangaExplorer(),
          LatestMangaExplorer(),
          FilteredMangaExplorer(),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
