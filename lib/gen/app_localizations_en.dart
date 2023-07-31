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
  String get settings_appearance => 'Appearance';

  @override
  String get settings_appearance_subtitle => 'Theme, date & time format';

  @override
  String get settings_library => 'Library';

  @override
  String get settings_library_subtitle => 'Categories, global update';

  @override
  String get search_title => 'Explore';

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
  String get details_add_to_library => 'Add to library';

  @override
  String get details_in_library => 'In library';

  @override
  String get details_webview => 'WebView';

  @override
  String get filter_popular => 'Popular';

  @override
  String get filter_latest => 'Recent';

  @override
  String get filter_other => 'Filter';
}
