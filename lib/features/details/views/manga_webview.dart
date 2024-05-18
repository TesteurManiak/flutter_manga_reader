import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_manga_reader/core/sources/local_datasource/local_datasource.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/core/widgets/error_content.dart';
import 'package:flutter_manga_reader/core/widgets/loading_content.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MangaWebview extends ConsumerWidget {
  const MangaWebview(this.mangaId, {super.key});

  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final source = ref.watch(scopedMangaDatasourceProvider);
    final manga = ref.watch(
      watchMangaByIdProvider(mangaId)
          .select((s) => s.whenData((m) => m.toSourceManga())),
    );

    return Scaffold(
      appBar: AppBar(),
      body: manga.when(
        data: (sourceManga) {
          final url = source.getMangaUrl(sourceManga);
          return InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(url)),
          );
        },
        loading: LoadingContent.new,
        error: (e, __) => ErrorContent(message: e.toString()),
      ),
    );
  }
}
