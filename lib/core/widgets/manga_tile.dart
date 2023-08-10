import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
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

        if (!mounted) return;
        unawaited(
          DetailsRoute(
            sourceId: ref.read(getSourceIdProvider(widget.manga)),
            mangaId: mangaId,
            openedFromSource: widget.displayedFromSource,
          ).push<void>(context),
        );
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
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
