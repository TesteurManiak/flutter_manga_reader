import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/manga_status_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/separated_row.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class StatusLabel extends StatelessWidget {
  const StatusLabel(this.status, {super.key});

  final MangaStatus status;

  @override
  Widget build(BuildContext context) {
    return SeparatedRow(
      mainAxisSize: MainAxisSize.min,
      separator: const SizedBox(width: 4),
      children: [
        Icon(status.icon, size: 14),
        Text(
          status.toLocalizedString(context),
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
