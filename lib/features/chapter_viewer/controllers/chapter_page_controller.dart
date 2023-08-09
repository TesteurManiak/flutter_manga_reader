import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const _kDefaultInitialPage = 0;

/// {@template chapter_page_controller}
/// Combination of both [PageController] and [ValueNotifier] to manage
/// the current page of a chapter in a [PageView].
/// {@endtemplate}
class ChapterPageController extends ChangeNotifier
    implements ValueListenable<int> {
  /// {@macro chapter_page_controller}
  ChapterPageController({
    int? initialPage,
  })  : _page = initialPage ?? _kDefaultInitialPage,
        pageController =
            PageController(initialPage: initialPage ?? _kDefaultInitialPage) {
    pageController.addListener(_onPageChangedListener);
  }

  final PageController pageController;

  int _page;

  /// Current page of the [PageView].
  int get page => _page;

  /// Short hand for [pageController.jumpToPage].
  set page(int value) => pageController.jumpToPage(value);

  @override
  int get value => _page;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _onPageChangedListener() {
    final currentPage = pageController.page?.round();
    if (currentPage != null && currentPage != page) {
      _page = currentPage;
      notifyListeners();
    }
  }
}
