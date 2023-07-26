import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/manga_tile.dart';
import 'package:flutter_manga_reader/core/widgets/paginated_grid_view.dart';
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
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(searchControllerProvider.notifier).searchForMangas();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final state = ref.watch(searchControllerProvider);

    return Scaffold(
      appBar: SourceAppBar(title: 'MangaDex'.hardcoded),
      body: state.when(
        loading: LoadingContent.new,
        loaded: (_, mangas) => _Loaded(mangas),
        empty: () => const _Empty(),
        error: (_) => const ErrorContent(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _Loaded extends ConsumerWidget {
  const _Loaded(this.mangas);

  final List<Manga> mangas;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaginatedGridView(
      padding: const EdgeInsets.all(16),
      fetchMore: () {
        return ref.read(searchControllerProvider.notifier).searchForMangas();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.72,
      ),
      itemCount: mangas.length,
      itemBuilder: (_, index) => MangaTile(mangas[index]),
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
