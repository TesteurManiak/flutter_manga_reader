import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/extensions/manga_status_extensions.dart';
import 'package:flutter_manga_reader/core/utils/scroll_physics.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/gradient_image.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/core/widgets/sliver_pull_to_refresh.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_manga_reader/features/details/widgets/details_button.dart';
import 'package:flutter_manga_reader/features/details/widgets/genre_list.dart';
import 'package:flutter_manga_reader/features/details/widgets/manga_description.dart';
import 'package:flutter_manga_reader/features/details/widgets/sliver_details_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class DetailsView extends ConsumerStatefulWidget {
  const DetailsView({
    super.key,
    required this.mangaId,
    required this.openedFromSource,
  });

  final String mangaId;
  final bool openedFromSource;

  @override
  ConsumerState<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends ConsumerState<DetailsView> {
  @override
  void initState() {
    super.initState();

    final detailsController = ref.read(
      detailsControllerProvider(widget.mangaId).notifier,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      detailsController.fetchDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _MangaContent(
        mangaId: widget.mangaId,
        openedFromSource: widget.openedFromSource,
      ),
    );
  }
}

class _MangaContent extends ConsumerStatefulWidget {
  const _MangaContent({
    required this.mangaId,
    required this.openedFromSource,
  });

  final String mangaId;
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
    final isLoading = ref.watch(
      detailsControllerProvider(widget.mangaId).select((v) => v.isLoading),
    );
    final manga = ref.watch(
      detailsControllerProvider(widget.mangaId).select(
        (v) => v.whenOrNull(loaded: (manga) => manga),
      ),
    );

    final theme = Theme.of(context);
    final desc = manga?.description;
    final genres = manga?.getGenres();
    final thumbnailUrl = manga?.thumbnailUrl;

    if (manga == null && isLoading) return const LoadingContent();

    return Stack(
      children: [
        if (thumbnailUrl != null)
          GradientImage(
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
        CustomScrollView(
          controller: scrollController,
          physics: const PullToRefreshScrollPhysics(),
          slivers: [
            SliverDetailsAppBar(scrollController: scrollController),
            SliverPullToRefresh(
              onRefresh: () async {
                // TODO(Guillaume): force refresh manga details
              },
            ),
            _SliverHeader(manga),
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
          ],
        ),
      ],
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
            Flexible(
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
  });

  final MangaStatus? status;
  final String? source;

  @override
  Widget build(BuildContext context) {
    final localStatus = status;
    final localSource = source;

    return Row(
      mainAxisSize: MainAxisSize.min,
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
        if (localSource != null) Text(localSource),
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

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoaded = ref.watch(
      detailsControllerProvider(id).select((v) => v.isLoaded),
    );

    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _AddToLibraryButton(id: id, isLoaded: isLoaded),
          DetailsButton(
            icon: Icons.public,
            label: 'WebView'.hardcoded,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class _AddToLibraryButton extends ConsumerWidget {
  const _AddToLibraryButton({
    required this.id,
    required this.isLoaded,
  });

  final String id;
  final bool isLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(
      detailsControllerProvider(id).select((v) => v.manga?.favorite ?? false),
    );

    return DetailsButton(
      onPressed: isLoaded
          ? () {
              ref.read(detailsControllerProvider(id).notifier).toggleFavorite();
            }
          : null,
      icon: isFavorite ? Icons.favorite : Icons.favorite_border,
      label: isFavorite
          ? 'In library'.hardcoded
          : context.strings.details_add_to_library,
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
