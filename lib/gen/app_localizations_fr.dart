import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get library_title => 'Bibliothèque';

  @override
  String get settings_title => 'Paramètres';

  @override
  String get manga_status_unknown => 'Inconnu';

  @override
  String get manga_status_ongoing => 'En cours';

  @override
  String get manga_status_completed => 'Terminé';

  @override
  String get manga_status_licensed => 'Licencié';

  @override
  String get manga_status_publishing_finished => 'Terminé';

  @override
  String get manga_status_canceled => 'Annulé';

  @override
  String get manga_status_on_hiatus => 'En pause';
}
