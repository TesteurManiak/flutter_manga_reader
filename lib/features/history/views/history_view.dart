import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/mixins/app_bar_size.dart';
import 'package:flutter_manga_reader/core/models/chapter_history.dart';
import 'package:flutter_manga_reader/core/services/toaster_service.dart';
import 'package:flutter_manga_reader/core/widgets/app_asset_image.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_manga_reader/features/history/providers/chapter_history.dart';
import 'package:flutter_manga_reader/features/history/providers/incognito_mode_controller.dart';
import 'package:flutter_manga_reader/features/history/widgets/history_tile.dart';
import 'package:flutter_manga_reader/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryView extends ConsumerWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const _AppBar(),
      body: ref.watch(watchChapterHistoryProvider).when(
            data: _LoadedContent.new,
            loading: LoadingContent.new,
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
      itemBuilder: (_, index) => HistoryTile(chapters[index]),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final strings = context.strings;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          AsciiEmojiWidget.random(),
          Text(
            strings.no_manga_found,
            style: textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _AppBar extends ConsumerWidget with AppBarSizeMixin {
  const _AppBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;
    return AppBar(
      title: Text(strings.history_title),
      actions: const [
        _IncognitoButton(),
      ],
    );
  }
}

class _IncognitoButton extends ConsumerWidget {
  const _IncognitoButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toaster = ref.watch(toasterServiceProvider);
    final incognitoEnabled = ref.watch(incognitoModeControllerProvider);
    final strings = context.strings;

    ref.listen(incognitoModeControllerProvider, (_, next) {
      final msg = switch (next) {
        true => strings.incognito_mode_enabled,
        false => strings.incognito_mode_disabled,
      };
      toaster.showToast(Text(msg), toastDuration: const Duration(seconds: 2));
    });

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        if (incognitoEnabled)
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
        IconButton(
          icon: Builder(
            builder: (context) {
              final iconTheme = IconTheme.of(context);
              return AppAssetImage(
                Assets.svgs.incognito,
                color: iconTheme.color,
              );
            },
          ),
          onPressed: () {
            ref.read(incognitoModeControllerProvider.notifier).toggle();
          },
        ),
      ],
    );
  }
}
