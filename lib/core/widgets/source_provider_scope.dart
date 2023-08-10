import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SourceProviderScope extends StatelessWidget {
  const SourceProviderScope({
    super.key,
    required this.sourceId,
    required this.child,
  });

  final String sourceId;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        mangaDatasourceProvider.overrideWith((ref) {
          return ref.watch(getSourceFromIdProvider(sourceId));
        }),
      ],
      child: child,
    );
  }
}
