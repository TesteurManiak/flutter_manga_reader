import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/manga_status_extensions.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class StatusLabel extends StatelessWidget {
  const StatusLabel(this.status, {super.key});

  final MangaStatus status;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final style = textTheme.bodySmall;

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Icon(status.icon, size: style?.fontSize, color: style?.color),
        Text(
          status.toLocalizedString(context),
          style: style,
        ),
      ],
    );
  }
}
