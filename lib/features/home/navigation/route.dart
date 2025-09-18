import 'package:flutter/cupertino.dart';
import 'package:flutter_manga_reader/features/home/navigation/chapter_viewer.route.dart';
import 'package:flutter_manga_reader/features/home/navigation/details.route.dart';
import 'package:flutter_manga_reader/features/home/navigation/search.route.dart';
import 'package:flutter_manga_reader/features/home/navigation/settings.route.dart';
import 'package:flutter_manga_reader/features/home/views/home_view.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
  routes: <TypedGoRoute>[
    TypedGoRoute<LibraryDetailsRoute>(
      path: LibraryDetailsRoute.path,
      routes: [
        TypedGoRoute<LibraryChapterViewerRoute>(path: ChapterViewerRoute.path),
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
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
