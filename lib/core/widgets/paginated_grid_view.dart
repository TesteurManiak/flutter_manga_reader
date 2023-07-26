import 'package:flutter/material.dart';

typedef FetchMoreCallback = Future<void> Function();

class PaginatedGridView extends StatefulWidget {
  const PaginatedGridView({
    super.key,
    required this.fetchMore,
    required this.gridDelegate,
    required this.itemBuilder,
    required this.itemCount,
    this.padding,
  });

  final FetchMoreCallback fetchMore;
  final SliverGridDelegate gridDelegate;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final EdgeInsetsGeometry? padding;

  @override
  State<PaginatedGridView> createState() => _PaginatedGridViewState();
}

class _PaginatedGridViewState extends State<PaginatedGridView> {
  final scrollController = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      final position = scrollController.position;
      if (position.maxScrollExtent == position.pixels) {
        if (!isLoading) {
          isLoading = !isLoading;
          widget.fetchMore().whenComplete(() => isLoading = !isLoading);
        }
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: widget.padding,
      controller: scrollController,
      gridDelegate: widget.gridDelegate,
      itemBuilder: widget.itemBuilder,
      itemCount: widget.itemCount,
    );
  }
}
