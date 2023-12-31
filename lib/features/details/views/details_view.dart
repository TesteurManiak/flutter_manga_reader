import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/extensions/manga_status_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/utils/scroll_physics.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/gradient_image.dart';
import 'package:flutter_manga_reader/core/widgets/slidable.dart';
import 'package:flutter_manga_reader/core/widgets/sliver_pull_to_refresh.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/use_cases/is_manga_favorite.dart';
import 'package:flutter_manga_reader/features/details/widgets/chapter_tile.dart';
import 'package:flutter_manga_reader/features/details/widgets/details_bottom_bar.dart';
import 'package:flutter_manga_reader/features/details/widgets/details_button.dart';
import 'package:flutter_manga_reader/features/details/widgets/genre_list.dart';
import 'package:flutter_manga_reader/features/details/widgets/manga_description.dart';
import 'package:flutter_manga_reader/features/details/widgets/sliver_details_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DetailsView extends ConsumerStatefulWidget {
  const DetailsView({
    super.key,
    required this.mangaId,
    required this.openedFromSource,
  });

  final int mangaId;
  final bool openedFromSource;

  @override
  ConsumerState<DetailsView> createState() => _DetailsContentState();
}

class _DetailsContentState extends ConsumerState<DetailsView> {
  @override
  void initState() {
    super.initState();

    final source = ref.read(mangaDatasourceProvider);
    final detailsController = ref.read(
      detailsControllerProvider(widget.mangaId, source).notifier,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      detailsController.fetchDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(watchMangaProvider(widget.mangaId));

    return DefaultSlidableController(
      initiallyShown: false,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Slidable(
          direction: SlideDirection.down,
          child: DetailsBottomBar(mangaId: widget.mangaId),
        ),
        body: state.when(
          data: (manga) {
            if (manga == null) {
              return ErrorContent(message: context.strings.manga_not_found);
            }

            return _MangaContent(
              mangaId: widget.mangaId,
              manga: manga,
              openedFromSource: widget.openedFromSource,
            );
          },
          error: (e, __) => ErrorContent(message: e.toString()),
          loading: LoadingContent.new,
        ),
      ),
    );
  }
}

class _MangaContent extends ConsumerStatefulWidget {
  const _MangaContent({
    required this.mangaId,
    required this.manga,
    required this.openedFromSource,
  });

  final int mangaId;
  final Manga manga;
  final bool openedFromSource;

  @override
  ConsumerState<_MangaContent> createState() => _MangaContentState();
}

class _MangaContentState extends ConsumerState<_MangaContent> {
  final scrollController = ScrollController();

  late final compactNotifier = ValueNotifier<bool>(!widget.openedFromSource);

  @override
  void dispose() {
    scrollController.dispose();
    compactNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final source = ref.watch(mangaDatasourceProvider);
    ref.listen(
        detailsControllerProvider(widget.mangaId, source)
            .select((s) => s.selectionMode), (_, next) {
      if (next) {
        DefaultSlidableController.maybeOf(context)?.show();
      } else {
        DefaultSlidableController.maybeOf(context)?.hide();
      }
    });

    final desc = widget.manga.description;
    final genres = widget.manga.getGenres();
    final thumbnailUrl = widget.manga.thumbnailUrl;

    return Stack(
      children: [
        if (thumbnailUrl != null)
          _BackgroundCover(
            thumbnailUrl: thumbnailUrl,
            scrollController: scrollController,
          ),
        CustomScrollView(
          controller: scrollController,
          physics: const PullToRefreshScrollPhysics(),
          slivers: [
            SliverDetailsAppBar(
              mangaId: widget.mangaId,
              scrollController: scrollController,
            ),
            SliverPullToRefresh(
              onRefresh: () {
                final source = ref.read(mangaDatasourceProvider);
                final provider =
                    detailsControllerProvider(widget.mangaId, source);
                return ref
                    .read(provider.notifier)
                    .fetchDetails(forceRefresh: true);
              },
            ),
            _SliverHeader(widget.manga),
            _SliverButtons(widget.mangaId),
            if (desc != null)
              _SliverDescription(
                desc: desc,
                initiallyExpanded: widget.openedFromSource,
                onExpansionChanged: (v) => compactNotifier.value = !v,
              ),
            if (genres != null)
              ValueListenableBuilder(
                valueListenable: compactNotifier,
                builder: (context, isCompact, _) {
                  return _SliverGenreList(
                    genres: genres,
                    compact: isCompact,
                  );
                },
              ),
            _SliverChapterList(widget.mangaId),
          ],
        ),
      ],
    );
  }
}

class _BackgroundCover extends ConsumerWidget {
  const _BackgroundCover({
    required this.thumbnailUrl,
    required this.scrollController,
  });

  final String thumbnailUrl;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return ListenableBuilder(
      listenable: scrollController,
      builder: (_, child) {
        final offset =
            scrollController.hasClients ? scrollController.offset : 0;
        final opacity = 1 - (offset / 200).clamp(0, 1).toDouble();

        return Opacity(
          opacity: opacity,
          child: child,
        );
      },
      child: GradientImage(
        height: 480,
        image: CachedNetworkImageProvider(thumbnailUrl),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            theme.scaffoldBackgroundColor.withOpacity(0.05),
            theme.scaffoldBackgroundColor,
          ],
          stops: const [0, .3],
        ),
      ),
    );
  }
}

class _SliverHeader extends StatelessWidget {
  const _SliverHeader(this.manga);

  final Manga? manga;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SeparatedRow(
          separator: const SizedBox(width: 8),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: AppNetworkImage(
                url: manga?.thumbnailUrl,
                width: size.width / 4,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    manga?.title ?? '',
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    manga?.author ?? '',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  _StatusAndSource(
                    status: manga?.status,
                    source: manga?.source,
                    lang: manga?.lang,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusAndSource extends StatelessWidget {
  const _StatusAndSource({
    required this.status,
    required this.source,
    required this.lang,
  });

  final MangaStatus? status;
  final String? source;
  final String? lang;

  @override
  Widget build(BuildContext context) {
    final localStatus = status;
    final localSource = source;

    return Row(
      children: [
        if (localStatus != null) ...[
          Icon(localStatus.icon, size: 14),
          const SizedBox(width: 4),
          Text(
            localStatus.toLocalizedString(context),
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const Text(' • '),
        ],
        if (localSource != null)
          Text(
            () {
              final buffer = StringBuffer(localSource);
              final lang = this.lang;
              if (lang != null) buffer.write(' (${lang.toUpperCase()})');
              return buffer.toString();
            }(),
            maxLines: 1,
          ),
      ],
    );
  }
}

class _SliverDescription extends StatelessWidget {
  const _SliverDescription({
    required this.desc,
    required this.initiallyExpanded,
    required this.onExpansionChanged,
  });

  final String desc;
  final bool initiallyExpanded;
  final ValueChanged<bool> onExpansionChanged;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: MangaDescription(
        description: desc,
        initiallyExpanded: initiallyExpanded,
        onExpansionChanged: onExpansionChanged,
      ),
    );
  }
}

class _SliverButtons extends ConsumerWidget {
  const _SliverButtons(this.id);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _AddToLibraryButton(id),
          const _OpenWebViewButton(),
        ],
      ),
    );
  }
}

class _AddToLibraryButton extends ConsumerWidget {
  const _AddToLibraryButton(this.id);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(isMangaFavoriteProvider(id));
    final strings = context.strings;

    return DetailsButton(
      onPressed: () {
        final source = ref.read(mangaDatasourceProvider);
        final provider = detailsControllerProvider(id, source);
        ref.read(provider.notifier).toggleFavorite();
      },
      icon: isFavorite ? Icons.favorite : Icons.favorite_border,
      label: isFavorite ? strings.in_library : strings.details_add_to_library,
    );
  }
}

class _OpenWebViewButton extends ConsumerWidget {
  const _OpenWebViewButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DetailsButton(
      icon: Icons.public,
      label: context.strings.details_webview,
      onPressed: null,
    );
  }
}

class _SliverGenreList extends StatelessWidget {
  const _SliverGenreList({
    required this.genres,
    required this.compact,
  });

  final bool compact;
  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GenreList(
        compact: compact,
        genres: genres,
      ),
    );
  }
}

class _SliverChapterList extends ConsumerWidget {
  const _SliverChapterList(this.mangaId);

  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapters =
        ref.watch(watchChaptersForMangaProvider(mangaId)).maybeWhen(
              data: (chapters) => chapters,
              orElse: () => <Chapter>[],
            );

    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      sliver: MultiSliver(
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                context.strings.details_chapter_count(chapters.length),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: chapters.length,
            itemBuilder: (_, index) {
              final chapter = chapters[index];
              return ChapterTile(
                mangaId: mangaId,
                sourceId: ref.read(mangaDatasourceProvider).sourceId,
                chapter: chapter,
              );
            },
          ),
        ],
      ),
    );
  }
}
