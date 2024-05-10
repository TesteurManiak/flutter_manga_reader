import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get library_title => 'Library';

  @override
  String get library_empty => 'Your library is empty';

  @override
  String get settings_title => 'Settings';

  @override
  String get settings_general => 'General';

  @override
  String get settings_general_subtitle => 'App language, notifications';

  @override
  String get settings_general_language => 'App language';

  @override
  String get settings_general_language_default => 'Default';

  @override
  String get settings_general_clear_cache => 'Clear cache';

  @override
  String get settings_appearance => 'Appearance';

  @override
  String get settings_appearance_subtitle => 'Theme, date & time format';

  @override
  String get settings_appearance_dark_mode => 'Dark mode';

  @override
  String get settings_appearance_system_default => 'System default';

  @override
  String get settings_appearance_disabled => 'Disabled';

  @override
  String get settings_appearance_enabled => 'Enabled';

  @override
  String get settings_library => 'Library';

  @override
  String get settings_library_subtitle => 'Categories, global update';

  @override
  String get settings_about => 'About';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_open_source_licenses => 'Open source licenses';

  @override
  String get search_title => 'Browse';

  @override
  String get search_empty => 'No manga found';

  @override
  String get manga_status_unknown => 'Unknown';

  @override
  String get manga_status_ongoing => 'Ongoing';

  @override
  String get manga_status_completed => 'Completed';

  @override
  String get manga_status_licensed => 'Licensed';

  @override
  String get manga_status_publishing_finished => 'Completed';

  @override
  String get manga_status_canceled => 'Canceled';

  @override
  String get manga_status_on_hiatus => 'Hiatus';

  @override
  String get generic_error => 'Something went wrong';

  @override
  String get generic_cancel => 'Cancel';

  @override
  String get generic_retry => 'Retry';

  @override
  String get generic_search => 'Search...';

  @override
  String get details_add_to_library => 'Add to library';

  @override
  String get details_webview => 'WebView';

  @override
  String details_chapter_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chapters',
      one: '$count chapter',
      zero: '$count chapter',
    );
    return '$_temp0';
  }

  @override
  String get filter_popular => 'Popular';

  @override
  String get filter_latest => 'Recent';

  @override
  String get filter_other => 'Filter';

  @override
  String get left_to_right => 'Left to right';

  @override
  String get right_to_left => 'Right to left';

  @override
  String get webtoon => 'Webtoon';

  @override
  String get in_library => 'In library';

  @override
  String get chapter_not_found => 'Chapter not found';

  @override
  String get manga_not_found => 'Manga not found';

  @override
  String get chapter_settings_for_this_series => 'For this series';

  @override
  String get lecture_mode => 'Lecture mode';

  @override
  String get mark_as_read => 'Mark as read';

  @override
  String get mark_as_unread => 'Mark as unread';

  @override
  String last_page(int page) {
    return 'Page $page';
  }

  @override
  String get download => 'Download';

  @override
  String get delete => 'Delete';

  @override
  String get cache_cleared => 'Cache cleared';
}
