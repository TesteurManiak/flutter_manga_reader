import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get library_title => 'Bibliothèque';

  @override
  String get library_empty => 'Votre bibliothèque est vide';

  @override
  String get settings_title => 'Paramètres';

  @override
  String get settings_general => 'Général';

  @override
  String get settings_general_subtitle => 'Langue de l\'application, notifications';

  @override
  String get settings_general_language => 'Langue de l\'application';

  @override
  String get settings_appearance => 'Apparence';

  @override
  String get settings_appearance_subtitle => 'Thème, format de la date et de l\'heure';

  @override
  String get settings_library => 'Bibliothèque';

  @override
  String get settings_library_subtitle => 'Catégories, mise à jour globale';

  @override
  String get search_title => 'Explorer';

  @override
  String get search_empty => 'Aucun manga trouvé';

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

  @override
  String get generic_error => 'Une erreur est survenue';

  @override
  String get generic_cancel => 'Annuler';

  @override
  String get details_add_to_library => 'Ajouter à la bibliothèque';

  @override
  String get details_in_library => 'Dans la bibliothèque';

  @override
  String get details_webview => 'WebView';
}
