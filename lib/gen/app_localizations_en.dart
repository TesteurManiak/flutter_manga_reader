import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get library_title => 'Library';

  @override
  String get settings_title => 'Settings';

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
}
