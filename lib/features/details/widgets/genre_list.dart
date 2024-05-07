import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/separated_row.dart';

class GenreList extends StatelessWidget {
  const GenreList({
    super.key,
    required this.compact,
    required this.genres,
  });

  final bool compact;
  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    const spacing = 4.0;
    const padding = EdgeInsets.symmetric(horizontal: 12);

    if (compact) {
      return SingleChildScrollView(
        padding: padding,
        scrollDirection: Axis.horizontal,
        child: SeparatedRow(
          separator: const SizedBox(width: spacing),
          children: [
            for (final genre in genres) _GenreChip(genre),
          ],
        ),
      );
    }

    return Padding(
      padding: padding,
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing + 2,
        children: [
          for (final genre in genres) _GenreChip(genre),
        ],
      ),
    );
  }
}

class _GenreChip extends StatelessWidget {
  const _GenreChip(this.genre);

  final String genre;

  @override
  Widget build(BuildContext context) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: Colors.grey.withOpacity(0.2),
      side: const BorderSide(style: BorderStyle.none),
      label: Text(
        genre,
        style: const TextStyle(fontSize: 11),
      ),
    );
  }
}
