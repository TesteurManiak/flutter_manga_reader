import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/library/views/library_view.dart';
import 'package:flutter_manga_reader/features/search/views/search_view.dart';

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
          SearchView(),
          Center(child: Text('Settings')),
        ],
      ),
      bottomNavigationBar: _BottomBar(
        controller: selectedIndexNotifier,
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.controller,
  });

  final ValueNotifier<int> controller;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, currentIndex, _) {
        return BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => controller.value = index,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: strings.library_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: strings.searching_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: strings.settings_title,
            ),
          ],
        );
      },
    );
  }
}
