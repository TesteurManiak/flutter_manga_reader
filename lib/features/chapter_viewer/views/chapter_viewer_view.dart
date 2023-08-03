import 'package:flutter/material.dart';

class ChapterViewerView extends StatelessWidget {
  const ChapterViewerView({
    super.key,
    required this.chapterId,
  });

  final int chapterId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
