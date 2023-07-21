import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'.hardcoded),
      ),
    );
  }
}
