import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/separated_column.dart';

class EmptyMangaContent extends StatelessWidget {
  const EmptyMangaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          const AsciiEmojiWidget(AsciiEmoji.confused),
          Text(
            context.strings.search_empty,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
