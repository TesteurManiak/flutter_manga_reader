import 'package:flutter/cupertino.dart';
import 'package:flutter_manga_reader/core/widgets/source_provider_scope.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/views/chapter_viewer_view.dart';
import 'package:flutter_manga_reader/features/details/views/cover_viewer_view.dart';
import 'package:flutter_manga_reader/features/details/views/details_view.dart';
import 'package:flutter_manga_reader/features/details/views/manga_webview.dart';
import 'package:flutter_manga_reader/features/home/views/home_view.dart';
import 'package:flutter_manga_reader/features/search/views/search_view.dart';
import 'package:flutter_manga_reader/features/settings/views/about_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/appearance_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/backup_settings_view.dart';
import 'package:flutter_manga_reader/features/settings/views/general_settings_view.dart';
import 'package:go_router/go_router.dart';

part 'chapter_viewer.route.dart';
part 'details.route.dart';
part 'route.g.dart';
part 'search.route.dart';
part 'settings.route.dart';

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
class HomeRoute extends GoRouteData with _$HomeRoute {
  const HomeRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
