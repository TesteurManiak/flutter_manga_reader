import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends StatelessWidget {
  const ChapterTile(this.chapter, {super.key});

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    final dateUpload = DateTime.fromMillisecondsSinceEpoch(
      chapter.dateUpload,
      isUtc: true,
    );
    final scanlator = chapter.scanlator;
    final subtitle = <String>[
      DateFormat.yMd().format(dateUpload),
      if (scanlator != null && scanlator.isNotEmpty) scanlator,
    ];

    return ListTile(
      title: Text(chapter.name),
      subtitle: Text(subtitle.join(' • ')),
    );
  }
}
