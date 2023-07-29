import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/extensions/manga_status_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class DetailsView extends ConsumerStatefulWidget {
  const DetailsView({
    super.key,
    required this.mangaId,
    required this.initialManga,
  });

  final String mangaId;
  final Manga initialManga;

  @override
  ConsumerState<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends ConsumerState<DetailsView> {
  @override
  void initState() {
    super.initState();

    if (!widget.initialManga.initialized) {
      final detailsController = ref.read(
        detailsControllerProvider(widget.mangaId).notifier,
      );

      WidgetsBinding.instance.addPostFrameCallback((_) {
        detailsController.fetchDetails();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _MangaContent(widget.initialManga),
    );
  }
}

class _MangaContent extends ConsumerWidget {
  const _MangaContent(this.initialManga);

  final Manga initialManga;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manga = ref.watch(
      detailsControllerProvider(initialManga.id).select(
        (value) {
          return value.maybeWhen(
            loaded: (manga) => manga,
            orElse: () => initialManga,
          );
        },
      ),
    );

    final desc = manga.description;

    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        _SliverHeader(manga),
        if (desc != null) _SliverDescription(desc),
        _SliverButtons(manga.id),
      ],
    );
  }
}

class _SliverHeader extends StatelessWidget {
  const _SliverHeader(this.manga);

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SeparatedRow(
          separator: const SizedBox(width: 8),
          children: [
            Flexible(
              child: AppNetworkImage(
                url: manga.thumbnailUrl,
                width: size.width / 4,
              ),
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  text: '${manga.title}\n',
                  style: textTheme.titleMedium,
                  children: [
                    TextSpan(text: manga.author, style: textTheme.bodyMedium),
                    TextSpan(
                      text:
                          '${manga.status.toLocalizedString(context)} - ${manga.source}',
                      style: textTheme.bodyMedium,
                    ),
                  ].separatedWith(const TextSpan(text: '\n')).toList(),
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverDescription extends StatelessWidget {
  const _SliverDescription(this.desc);

  final String desc;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(desc),
      ),
    );
  }
}

class _SliverButtons extends ConsumerWidget {
  const _SliverButtons(this.id);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(
      detailsControllerProvider(id).select((v) => v.manga?.favorite ?? false),
    );

    return SliverToBoxAdapter(
      child: UnconstrainedBox(
        child: TextButton.icon(
          onPressed: () {
            ref.read(detailsControllerProvider(id).notifier).toggleFavorite();
          },
          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
          label: const Text('Add to library'),
        ),
      ),
    );
  }
}
