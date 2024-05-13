import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/string_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/app_bar_size.dart';
import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/separated_column.dart';
import 'package:flutter_manga_reader/features/history/providers/chapter_history.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryView extends ConsumerWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const _AppBar(),
      body: ref.watch(watchChapterHistoryProvider).when(
            data: _LoadedContent.new,
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => const ErrorContent(),
          ),
    );
  }
}

class _LoadedContent extends StatelessWidget {
  const _LoadedContent(this.chapters);

  final List<ChapterHistory> chapters;

  @override
  Widget build(BuildContext context) {
    if (chapters.isEmpty) return const _Empty();

    return ListView.builder(
      itemCount: chapters.length,
      itemBuilder: (context, index) {
        // TODO(Guillaume): implement chapter history tile
        final history = chapters[index];
        return ListTile(
          title: Text(history.manga.title),
          subtitle: Text(history.readAt.toString()),
        );
      },
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          const AsciiEmojiWidget(AsciiEmoji.confused),
          Text(
            'No history yet'.hardcoded, // TODO(Guillaume): localize this string
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget with AppBarSizeMixin {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;
    return AppBar(
      title: Text(strings.history_title),
    );
  }
}
