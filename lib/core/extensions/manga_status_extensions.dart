import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

extension MangaStatusExtensions on MangaStatus {
  String toLocalizedString(BuildContext context) {
    final strings = context.strings;

    return switch (this) {
      MangaStatus.unknown => strings.manga_status_unknown,
      MangaStatus.ongoing => strings.manga_status_ongoing,
      MangaStatus.completed => strings.manga_status_completed,
      MangaStatus.licensed => strings.manga_status_licensed,
      MangaStatus.publishingFinished =>
        strings.manga_status_publishing_finished,
      MangaStatus.cancelled => strings.manga_status_canceled,
      MangaStatus.onHiatus => strings.manga_status_on_hiatus,
    };
  }

  IconData get icon {
    return switch (this) {
      MangaStatus.unknown => Icons.block,
      MangaStatus.ongoing => Icons.schedule,
      MangaStatus.completed => Icons.done_all,
      MangaStatus.licensed => Icons.lock,
      MangaStatus.publishingFinished => Icons.done_all,
      MangaStatus.cancelled => Icons.close,
      MangaStatus.onHiatus => Icons.pause,
    };
  }
}
