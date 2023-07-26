import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InfiniteScroller extends StatelessWidget {
  const InfiniteScroller({
    super.key,
    required this.fetchMore,
    required this.scrollController,
    this.fetchThreshold,
    required this.child,
  });

  /// The function that will be called when the [scrollController] has scrolled
  /// the [fetchThreshold] amount of scroll.
  final AsyncCallback fetchMore;

  /// The scroll controller to use.
  final ScrollController scrollController;

  /// A number that determine when to call [fetchMore].
  /// For example if the value is 1.5 (the default), then the [fetchMore]
  /// function will be called when the remaining scroll is less than 1.5 times
  /// the dimension of the viewport.
  ///
  /// Defaults to 1.5.
  final double? fetchThreshold;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _RawInfiniteScroller(
      fetchMore: fetchMore,
      scrollController: scrollController,
      fetchThreshold: fetchThreshold ?? 1.5,
      child: child,
    );
  }
}

class _RawInfiniteScroller extends StatefulWidget {
  const _RawInfiniteScroller({
    required this.fetchMore,
    required this.scrollController,
    required this.fetchThreshold,
    required this.child,
  });

  final AsyncCallback fetchMore;
  final ScrollController scrollController;
  final double fetchThreshold;
  final Widget child;

  @override
  State<_RawInfiniteScroller> createState() => __RawInfiniteScrollerState();
}

class __RawInfiniteScrollerState extends State<_RawInfiniteScroller> {
  double lastPixelsThreshold = 0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(handleScroll);
  }

  @override
  void didUpdateWidget(covariant _RawInfiniteScroller oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController.removeListener(handleScroll);
      widget.scrollController.addListener(handleScroll);
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(handleScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  Future<void> handleScroll() async {
    final positions = widget.scrollController.positions;
    if (positions.isEmpty) return;

    final position = positions.first;
    final pageThreshold = position.viewportDimension * widget.fetchThreshold;
    final pixelsThreshold = position.maxScrollExtent - pageThreshold;

    if (position.pixels > lastPixelsThreshold) {
      if (lastPixelsThreshold == pixelsThreshold) {
        // We don't want to fetch more data if the scroll extent didn't change.
        return;
      }

      lastPixelsThreshold = pixelsThreshold;

      try {
        await widget.fetchMore();
      } finally {}
    }
  }
}
