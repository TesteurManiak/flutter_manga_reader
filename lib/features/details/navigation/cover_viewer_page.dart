import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/details/views/cover_viewer_view.dart';

class CoverViewerPage extends PageRouteBuilder<void> {
  CoverViewerPage(String? coverUrl)
      : super(
          opaque: false,
          fullscreenDialog: true,
          maintainState: true,
          pageBuilder: (context, _, __) => _pageBuilder(context, coverUrl),
        );

  static Widget _pageBuilder(BuildContext context, String? url) {
    return CoverViewerView(url);
  }
}
