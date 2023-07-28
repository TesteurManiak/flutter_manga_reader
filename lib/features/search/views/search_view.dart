import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/infinite_scroller.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/manga_tile.dart';
import 'package:flutter_manga_reader/core/widgets/source_app_bar.dart';
import 'package:flutter_manga_reader/features/search/controllers/search_controller.dart';
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
      ref.read(searchControllerProvider(datasource).notifier).fetchNextMangas();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final state = ref.watch(searchControllerProvider(datasource));

    return Scaffold(
      appBar: SourceAppBar(title: datasource.name),
      body: state.map(
        loading: (_) => const LoadingContent(),
        loaded: (loaded) {
          return _Loaded(
            datasource: datasource,
            mangas: loaded.mangas,
          );
        },
        empty: (_) => const _Empty(),
        error: (_) => const ErrorContent(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _Loaded extends ConsumerStatefulWidget {
  const _Loaded({
    required this.datasource,
    required this.mangas,
  });

  final MangaDatasource datasource;
  final List<Manga> mangas;

  @override
  ConsumerState<_Loaded> createState() => _LoadedState();
}

class _LoadedState extends ConsumerState<_Loaded> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InfiniteScroller(
      scrollController: scrollController,
      fetchMore: () {
        return ref
            .read(searchControllerProvider(widget.datasource).notifier)
            .fetchNextMangas();
      },
      child: GridView.builder(
        controller: scrollController,
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.72,
        ),
        itemCount: widget.mangas.length,
        // Why are items reloading ???
        itemBuilder: (_, index) => MangaTile(widget.mangas[index]),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          const AsciiEmojiWidget(AsciiEmoji.confused),
          Text(
            'No manga found'.hardcoded,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
