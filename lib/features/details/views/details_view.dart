import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class DetailsView extends ConsumerStatefulWidget {
  const DetailsView({
    super.key,
    required this.mangaId,
  });

  final String mangaId;

  @override
  ConsumerState<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends ConsumerState<DetailsView> {
  late final DetailsController detailsController;

  @override
  void initState() {
    super.initState();

    detailsController = ref.read(
      detailsControllerProvider(widget.mangaId).notifier,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      detailsController.fetchDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(detailsControllerProvider(widget.mangaId));

    return Scaffold(
      appBar: AppBar(),
      body: state.when(
        loading: LoadingContent.new,
        loaded: _LoadedContent.new,
        error: (_) => const ErrorContent(),
      ),
    );
  }
}

class _LoadedContent extends StatelessWidget {
  const _LoadedContent(this.manga);

  final Manga manga;

  @override
  Widget build(BuildContext context) {
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
