import 'package:flutter/material.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends StatelessWidget {
  const ChapterTile(this.chapter, {super.key});

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    final scanlator = chapter.scanlator;

    return ListTile(
      title: Text(chapter.name),
      subtitle:
          scanlator != null && scanlator.isNotEmpty ? Text(scanlator) : null,
    );
  }
}
