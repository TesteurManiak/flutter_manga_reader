import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: const CustomScrollView(),
    );
  }
}

class _AppBar extends StatelessWidget with AppBarSizeMixin {
  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return AppBar(
      title: Text(strings.library_title),
    );
  }
}
