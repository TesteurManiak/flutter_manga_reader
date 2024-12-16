import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/sources/remote_datasource/manga_datasource.dart';
import 'package:flutter_manga_reader/features/search/controllers/filtered_manga_controller.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _kBottomHeight = 48.0;

class SourceAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const SourceAppBar({
    super.key,
    required this.onFilterChanged,
  });

  final ValueChanged<FilterType> onFilterChanged;

  @override
  ConsumerState<SourceAppBar> createState() => _SourceAppBarState();

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight + _kBottomHeight);
  }
}

class _SourceAppBarState extends ConsumerState<SourceAppBar> {
  final selectedFilterNotifier = ValueNotifier<FilterType>(FilterType.popular);

  bool searchMode = false;

  @override
  void initState() {
    super.initState();

    selectedFilterNotifier.addListener(() {
      widget.onFilterChanged(selectedFilterNotifier.value);
    });
  }

  @override
  void dispose() {
    selectedFilterNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title =
        ref.watch(scopedMangaDatasourceProvider.select((v) => v.name));

    return AppBar(
      title: searchMode
          ? _SearchField(controller: selectedFilterNotifier)
          : Text(title),
      actions: [
        if (!searchMode)
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => setState(() => searchMode = true),
          ),
        const IconButton(
          icon: Icon(Icons.view_module),
          onPressed: null,
        ),
        const IconButton(
          icon: Icon(Icons.public),
          onPressed: null,
        ),
      ],
      bottom: _FilterChipList(controller: selectedFilterNotifier),
    );
  }
}

class _SearchField extends ConsumerStatefulWidget {
  const _SearchField({
    required this.controller,
  });

  final ValueNotifier<FilterType> controller;

  @override
  ConsumerState<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<_SearchField> {
  final textController = TextEditingController();

  bool showClearButton = false;

  @override
  void initState() {
    super.initState();

    textController.addListener(() {
      setState(() => showClearButton = textController.text.isNotEmpty);
    });
  }

  @override
  void dispose() {
    textController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final source = ref.watch(scopedMangaDatasourceProvider);
    final filteredMangaProvider = filteredMangaControllerProvider(source);

    // Needed to keep the provider alive until the widget is instantiated
    ref.watch(filteredMangaProvider);

    return TextField(
      autofocus: true,
      autocorrect: false,
      controller: textController,
      onSubmitted: (value) {
        widget.controller.value = FilterType.filters;
        ref.read(filteredMangaProvider.notifier).startSearch(value.trim());
      },
      decoration: InputDecoration(
        hintText: context.strings.generic_search,
        suffixIcon: showClearButton
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: textController.clear,
              )
            : null,
      ),
    );
  }
}

class _FilterChipList extends StatefulWidget implements PreferredSizeWidget {
  const _FilterChipList({required this.controller});

  final ValueNotifier<FilterType> controller;

  @override
  State<_FilterChipList> createState() => _FilterChipListState();

  @override
  Size get preferredSize => const Size.fromHeight(_kBottomHeight);
}

class _FilterChipListState extends State<_FilterChipList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.preferredSize.height,
      child: ValueListenableBuilder<FilterType>(
        valueListenable: widget.controller,
        builder: (context, selectedFilter, _) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final filterType = FilterType.values[index];

              return _FilterChip(
                type: filterType,
                selected: filterType == selectedFilter,
                onTap: () => widget.controller.value = filterType,
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 6),
            itemCount: FilterType.values.length,
          );
        },
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

  final FilterType type;
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
      selectedColor: theme.colorScheme.primary.withValues(alpha: .2),
      side: const BorderSide(style: BorderStyle.none),
      showCheckmark: false,
    );
  }
}

enum FilterType {
  popular(Icons.favorite, _popular),
  latest(Icons.new_releases_outlined, _latest),
  filters(Icons.filter_list, _filters, enabled: false);

  const FilterType(this.icon, this.text, {this.enabled = true});

  final IconData icon;
  final LocalizedStringFetcher text;
  final bool enabled;

  static String _popular(AppLocalizations strings) => strings.filter_popular;
  static String _latest(AppLocalizations strings) => strings.filter_latest;
  static String _filters(AppLocalizations strings) => strings.filter_other;
}
