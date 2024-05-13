import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/separated_column.dart';
import 'package:flutter_manga_reader/features/history/views/history_view.dart';
import 'package:flutter_manga_reader/features/library/views/library_view.dart';
import 'package:flutter_manga_reader/features/search/views/source_list_view.dart';
import 'package:flutter_manga_reader/features/settings/views/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final pageController = PageController();
  final selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    selectedIndexNotifier.addListener(() {
      pageController.jumpToPage(selectedIndexNotifier.value);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          LibraryView(),
          _WIPView(),
          BrowseView(),
          HistoryView(),
          SettingsView(),
        ],
      ),
      bottomNavigationBar: _BottomBar(
        controller: selectedIndexNotifier,
      ),
    );
  }
}

class _WIPView extends StatelessWidget {
  const _WIPView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SeparatedColumn(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            separator: SizedBox(height: 8),
            children: [
              Icon(
                Icons.build_circle_outlined,
                size: 48,
              ),
              Text(
                'Work In Progress',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.controller});

  final ValueNotifier<int> controller;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, currentIndex, _) {
        return BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => controller.value = index,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.collections_bookmark_outlined),
              label: strings.library_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.new_releases_outlined),
              label: strings.updates_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.explore_outlined),
              label: strings.search_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.update),
              label: strings.history_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.more_horiz_rounded),
              label: strings.settings_title,
            ),
          ],
        );
      },
    );
  }
}
