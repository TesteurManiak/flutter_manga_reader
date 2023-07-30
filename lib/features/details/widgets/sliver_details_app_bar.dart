import 'package:flutter/material.dart';

class SliverDetailsAppBar extends StatelessWidget {
  const SliverDetailsAppBar({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final schemeColor = theme.brightness == Brightness.light
        ? theme.colorScheme.primary
        : theme.colorScheme.surface;
    final appBarColor = theme.appBarTheme.backgroundColor ?? schemeColor;

    return ListenableBuilder(
      listenable: scrollController,
      builder: (context, _) {
        final scrollOffset = scrollController.offset;
        final opacity = (scrollOffset / 350).clamp(0, 1).toDouble();

        return SliverAppBar(
          backgroundColor: appBarColor.withOpacity(opacity),
          surfaceTintColor: Colors.transparent,
          pinned: true,
          actions: const [
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
  }
}
