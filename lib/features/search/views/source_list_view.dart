import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/extensions/locale_extensions.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class BrowseView extends ConsumerWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sources = ref.watch(mangaDatasourcesProvider).values.toList();
    final strings = context.strings;

    return Scaffold(
      appBar: AppBar(title: Text(strings.search_title)),
      body: ListView.builder(
        itemCount: sources.length,
        itemBuilder: (context, index) {
          final source = sources[index];
          return _SourceTile(source);
        },
      ),
    );
  }
}

class _SourceTile extends StatelessWidget {
  const _SourceTile(this.source);

  final MangaDatasource source;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(source.name),
      subtitle: Text(Locale(source.lang).translatedLocaleName),
      onTap: () {
        BrowseSourceRoute(sourceId: source.id).push<void>(context);
      },
    );
  }
}
