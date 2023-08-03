import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:intl/intl.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterTile extends StatelessWidget {
  const ChapterTile(this.chapter, {super.key});

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    final dateUpload = chapter.dateUpload;
    final scanlator = chapter.scanlator;
    final subtitle = <String>[
      if (dateUpload != null) DateFormat.yMd().format(dateUpload),
      if (scanlator != null && scanlator.isNotEmpty) scanlator,
    ];

    return ListTile(
      title: Text(chapter.name),
      subtitle: Text(subtitle.join(' • ')),
      trailing: const IconButton(
        onPressed: null, // TODO(Guillaume): download
        icon: Icon(Icons.download_for_offline_outlined),
      ),
      onTap: () {
        ChapterViewerRoute(chapterId: chapter.id).push<void>(context);
      },
      onLongPress: () {
        // TODO(Guillaume): open menu
      },
    );
  }
}
