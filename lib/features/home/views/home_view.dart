import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/library/views/library_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          LibraryView(),
          Center(child: Text('Search')),
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
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, currentIndex, _) {
        return BottomNavigationBar(
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: 'Library'.hardcoded,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: 'Search'.hardcoded,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'Settings'.hardcoded,
            ),
          ],
        );
      },
    );
  }
}
