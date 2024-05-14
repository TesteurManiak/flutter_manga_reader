import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/use_cases/get_unread_chapters.dart';
import 'package:flutter_manga_reader/core/use_cases/is_manga_in_library.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/features/details/navigation/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaTile extends ConsumerStatefulWidget {
  const MangaTile({
    super.key,
    required this.manga,
    required this.displayedFromSource,
  });

  final SourceManga manga;
  final bool displayedFromSource;

  @override
  ConsumerState<MangaTile> createState() => _MangaTileState();
}

class _MangaTileState extends ConsumerState<MangaTile>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final isFavorite = ref.watch(isMangaInLibraryProvider(widget.manga));
    final alreadyInLibrary = isFavorite && widget.displayedFromSource;
    final showRemainingChapters = isFavorite && !widget.displayedFromSource;
    final strings = context.strings;

    return GestureDetector(
      onTap: () async {
        late final int mangaId;
        final localId = await ref.read(
          getMangaIdFromSourceProvider(widget.manga).future,
        );
        if (localId == null) {
          mangaId = await ref
              .read(localDatasourceProvider)
              .saveSourceManga(widget.manga);
        } else {
          mangaId = localId;
        }

        if (context.mounted) {
          DetailsRoute.go(
            context,
            sourceId: widget.manga.sourceId,
            mangaId: mangaId,
          );
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Stack(
          children: [
            AppNetworkImage(
              url: widget.manga.thumbnailUrl,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            if (alreadyInLibrary)
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.7),
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  bottom: 8,
                  top: 16,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                  ),
                ),
                child: Text(
                  widget.manga.title,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (alreadyInLibrary)
              Positioned(
                top: 4,
                left: 4,
                right: 4,
                child: _LabelContainer(strings.in_library),
              ),
            if (showRemainingChapters)
              Positioned(
                top: 4,
                left: 4,
                child: _ChaptersLeftToRead(widget.manga),
              ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _ChaptersLeftToRead extends ConsumerWidget {
  const _ChaptersLeftToRead(this.sourceManga);

  final SourceManga sourceManga;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unreadChaptersCount =
        ref.watch(getUnreadChaptersProvider(sourceManga));

    if (unreadChaptersCount == null) return const SizedBox.shrink();

    return _LabelContainer(unreadChaptersCount.toString());
  }
}

class _LabelContainer extends StatelessWidget {
  const _LabelContainer(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }
}
