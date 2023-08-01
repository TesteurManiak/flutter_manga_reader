import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';

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
      surfaceTintColor: Colors.transparent,
      actions: const [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.view_module),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.public),
          onPressed: null,
        ),
      ],
      bottom: const _FilterChipList(),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight + _kBottomHeight);
  }
}

class _FilterChipList extends StatefulWidget implements PreferredSizeWidget {
  const _FilterChipList();

  @override
  State<_FilterChipList> createState() => _FilterChipListState();

  @override
  Size get preferredSize => const Size.fromHeight(_kBottomHeight);
}

class _FilterChipListState extends State<_FilterChipList> {
  _FilterType _selectedFilter = _FilterType.popular;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.preferredSize.height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final filterType = _FilterType.values[index];

          return _FilterChip(
            type: filterType,
            selected: filterType == _selectedFilter,
            onTap: () => setState(() => _selectedFilter = filterType),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 6),
        itemCount: _FilterType.values.length,
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.type,
    required this.selected,
    required this.onTap,
  });

  final _FilterType type;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;
    final theme = Theme.of(context);

    return RawChip(
      avatar: Icon(type.icon),
      label: Text(type.text(strings)),
      onPressed: onTap,
      selected: selected,
      isEnabled: type.enabled,
      selectedColor: theme.colorScheme.primary.withOpacity(.2),
      side: selected ? const BorderSide(style: BorderStyle.none) : null,
      showCheckmark: false,
    );
  }
}

enum _FilterType {
  popular(Icons.favorite, _popular),
  latest(Icons.new_releases_outlined, _latest, enabled: false),
  filters(Icons.filter_list, _filters, enabled: false);

  const _FilterType(this.icon, this.text, {this.enabled = true});

  final IconData icon;
  final LocalizedStringFetcher text;
  final bool enabled;

  static String _popular(AppLocalizations strings) => strings.filter_popular;
  static String _latest(AppLocalizations strings) => strings.filter_latest;
  static String _filters(AppLocalizations strings) => strings.filter_other;
}
