import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

const _kBottomHeight = 48.0;

class SourceAppBar extends StatelessWidget with AppBarSizeMixin {
  const SourceAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      bottom: const _FilterChipList(),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight + _kBottomHeight);
  }
}

class _FilterChipList extends StatelessWidget implements PreferredSizeWidget {
  const _FilterChipList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final filterType = _FilterType.values[index];

          return FilterChip(
            avatar: Icon(filterType.icon),
            label: Text(filterType.name.hardcoded),
            onSelected: (_) {},
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemCount: _FilterType.values.length,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_kBottomHeight);
}

enum _FilterType {
  popular(Icons.favorite),
  latest(Icons.new_releases_outlined),
  filters(Icons.sort);

  const _FilterType(this.icon);

  final IconData icon;
}
