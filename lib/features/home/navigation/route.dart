import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/navigation/route.dart';
import 'package:flutter_manga_reader/features/details/navigation/route.dart';
import 'package:flutter_manga_reader/features/home/views/home_view.dart';
import 'package:flutter_manga_reader/features/search/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/navigation/route.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
  routes: <TypedGoRoute>[
    TypedGoRoute<LibraryDetailsRoute>(
      path: LibraryDetailsRoute.path,
      routes: [
        TypedGoRoute<LibraryChapterViewerRoute>(
          path: ChapterViewerRoute.path,
        ),
      ],
    ),
    TypedGoRoute<BrowseSourceRoute>(
      path: BrowseSourceRoute.path,
      routes: [
        TypedGoRoute<SourceDetailsRoute>(
          path: SourceDetailsRoute.path,
          routes: [
            TypedGoRoute<SourceChapterViewerRoute>(
              path: ChapterViewerRoute.path,
            ),
          ],
        ),
      ],
    ),
    TypedGoRoute<GeneralSettingsRoute>(path: GeneralSettingsRoute.path),
    TypedGoRoute<AppearanceSettingsRoute>(path: AppearanceSettingsRoute.path),
    TypedGoRoute<BackupSettingsRoute>(path: BackupSettingsRoute.path),
    TypedGoRoute<AboutSettingsRoute>(path: AboutSettingsRoute.path),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
