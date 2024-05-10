import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/details/controllers/details_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliverDetailsAppBar extends ConsumerStatefulWidget {
  const SliverDetailsAppBar({
    super.key,
    required this.mangaId,
    required this.scrollController,
  });

  final int mangaId;
  final ScrollController scrollController;

  @override
  ConsumerState<SliverDetailsAppBar> createState() =>
      _SliverDetailsAppBarState();
}

class _SliverDetailsAppBarState extends ConsumerState<SliverDetailsAppBar>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = detailsControllerProvider(widget.mangaId);

    final theme = Theme.of(context);
    final schemeColor = theme.brightness == Brightness.light
        ? theme.colorScheme.primary
        : theme.colorScheme.surface;
    final appBarColor = theme.appBarTheme.backgroundColor ?? schemeColor;

    ref.listen(
      provider.select((s) => s.selectionMode),
      (_, next) {
        if (next) {
          animationController.forward();
        } else {
          animationController.reverse();
        }
      },
    );

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return ListenableBuilder(
          listenable: widget.scrollController,
          builder: (context, _) {
            final offset = widget.scrollController.offset;
            final opacity = (offset / 350).clamp(0, 1).toDouble();

            final colorTween = ColorTween(
              begin: appBarColor.withOpacity(opacity),
              end: appBarColor,
            ).animate(animationController);

            final selectionMode = ref.watch(
              provider.select((s) => s.selectionMode),
            );
            final chaptersNum = ref.watch(
              provider.select((s) => s.selectedChapters.length),
            );

            return SliverAppBar(
              backgroundColor: colorTween.value,
              pinned: true,
              leading:
                  selectionMode ? _StopSelectionButton(widget.mangaId) : null,
              title: selectionMode ? Text('$chaptersNum') : null,
              actions: selectionMode
                  ? [
                      _SelectAllChaptersButton(widget.mangaId),
                    ]
                  : const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.download_outlined),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.filter_list),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.more_vert),
                      ),
                    ],
            );
          },
        );
      },
    );
  }
}

class _StopSelectionButton extends ConsumerWidget {
  const _StopSelectionButton(this.mangaId);

  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref
            .read(detailsControllerProvider(mangaId).notifier)
            .quitSelectionMode();
      },
      icon: const Icon(Icons.close),
    );
  }
}

class _SelectAllChaptersButton extends ConsumerWidget {
  const _SelectAllChaptersButton(this.mangaId);

  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref
            .read(detailsControllerProvider(mangaId).notifier)
            .selectAllChapters();
      },
      icon: const Icon(Icons.select_all),
    );
  }
}
