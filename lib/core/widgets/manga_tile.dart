import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/use_cases/get_unread_chapters.dart';
import 'package:flutter_manga_reader/core/use_cases/is_manga_in_library.dart';
import 'package:flutter_manga_reader/core/widgets/app_network_image.dart';
import 'package:flutter_manga_reader/features/home/navigation/details.route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class MangaTile extends ConsumerWidget {
  const MangaTile({
    super.key,
    required this.manga,
    required this.displayedFromSource,
    this.decodeWidth,
  });

  final SourceManga manga;
  final bool displayedFromSource;
  final int? decodeWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(isMangaInLibraryProvider(manga));
    final alreadyInLibrary = isFavorite && displayedFromSource;
    final showRemainingChapters = isFavorite && !displayedFromSource;
    final theme = Theme.of(context);
    final canvasColor = theme.canvasColor;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _handleOnTap(context, ref),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: GridTile(
          header:
              alreadyInLibrary || showRemainingChapters
                  ? _Header(
                    alreadyInLibrary: alreadyInLibrary,
                    sourceManga: manga,
                  )
                  : null,
          footer: _Footer(manga.title),
          child: switch (manga.thumbnailUrl) {
            final url? => Container(
              foregroundDecoration: BoxDecoration(
                boxShadow: switch (alreadyInLibrary) {
                  true => [BoxShadow(color: canvasColor.withValues(alpha: .2))],
                  false => null,
                },
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    canvasColor.withValues(alpha: 0),
                    canvasColor.withValues(alpha: .4),
                    canvasColor.withValues(alpha: .9),
                  ],
                ),
              ),
              child: AppNetworkImage(
                url: url,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                decodeWidth: decodeWidth,
              ),
            ),
            null => const SizedBox.shrink(),
          },
        ),
      ),
    );
  }

  Future<void> _handleOnTap(BuildContext context, WidgetRef ref) async {
    final localId = await ref.read(
      getMangaByUrlAndSourceIdProvider((
        url: manga.url,
        sourceId: manga.sourceId,
      )).selectAsync((manga) => manga?.id),
    );
    final int mangaId = await switch (localId) {
      final localId? => localId,
      null => ref.read(localDatasourceProvider).saveSourceManga(manga),
    };

    if (context.mounted) {
      DetailsRoute.goTo(context, sourceId: manga.sourceId, mangaId: mangaId);
    }
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.alreadyInLibrary, required this.sourceManga});

  final bool alreadyInLibrary;
  final SourceManga sourceManga;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          if (alreadyInLibrary)
            Flexible(child: _MangaBadge(strings.in_library)),
          if (!alreadyInLibrary) _ChaptersLeftToRead(sourceManga),
        ],
      ),
    );
  }
}

class _ChaptersLeftToRead extends ConsumerWidget {
  const _ChaptersLeftToRead(this.sourceManga);

  final SourceManga sourceManga;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unreadChaptersCount = ref.watch(
      getUnreadChaptersProvider(sourceManga),
    );

    if (unreadChaptersCount == null) return const SizedBox.shrink();

    return _MangaBadge(unreadChaptersCount.toString());
  }
}

class _MangaBadge extends StatelessWidget {
  const _MangaBadge(this.label);

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
        style: TextStyle(fontSize: 12, color: colorScheme.onPrimary),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: textTheme.titleSmall?.copyWith(color: Colors.white),
      ),
    );
  }
}
