import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
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
    final manga =
        ref.watch(detailsControllerProvider(initialManga.id)).maybeWhen(
              orElse: () => initialManga,
              loaded: (manga) => manga,
            );

    return CustomScrollView(
      slivers: [
        _SliverHeader(manga),
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
    final thumbnailUrl = manga.thumbnailUrl;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SeparatedRow(
          separator: const SizedBox(width: 8),
          children: [
            if (thumbnailUrl != null)
              Flexible(
                child: AppNetworkImage(
                  url: thumbnailUrl,
                  width: size.width / 4,
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(manga.title),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
