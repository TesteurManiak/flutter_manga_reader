import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get library_title => 'Bibliothèque';

  @override
  String get library_empty => 'Votre bibliothèque est vide';

  @override
  String get updates_title => 'Mises à jour';

  @override
  String get settings_title => 'Plus';

  @override
  String get settings_general => 'Général';

  @override
  String get settings_general_subtitle => 'Langue de l\'application, notifications';

  @override
  String get settings_general_language => 'Langue de l\'application';

  @override
  String get settings_general_language_default => 'Par défaut';

  @override
  String get settings_general_clear_cache => 'Vider le cache';

  @override
  String get settings_appearance => 'Apparence';

  @override
  String get settings_appearance_subtitle => 'Thème, format de la date et de l\'heure';

  @override
  String get settings_appearance_dark_mode => 'Mode sombre';

  @override
  String get settings_appearance_system_default => 'Par défaut du système';

  @override
  String get settings_appearance_disabled => 'Désactivé';

  @override
  String get settings_appearance_enabled => 'Activé';

  @override
  String get settings_library => 'Bibliothèque';

  @override
  String get settings_library_subtitle => 'Catégories, mise à jour globale';

  @override
  String get settings_about => 'À propos';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_open_source_licenses => 'Licences à code source ouvert';

  @override
  String get search_title => 'Explorer';

  @override
  String get history_title => 'Historique';

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
  String get generic_retry => 'Réessayer';

  @override
  String get generic_search => 'Recherche...';

  @override
  String get details_add_to_library => 'Ajouter à la bibliothèque';

  @override
  String get details_webview => 'WebView';

  @override
  String details_chapter_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chapitres',
      one: '$count chapitre',
      zero: '$count chapitre',
    );
    return '$_temp0';
  }

  @override
  String get filter_popular => 'Populaire';

  @override
  String get filter_latest => 'Récents';

  @override
  String get filter_other => 'Filtre';

  @override
  String get left_to_right => 'De gauche à droite';

  @override
  String get right_to_left => 'De droite à gauche';

  @override
  String get webtoon => 'Webtoon';

  @override
  String get in_library => 'Dans la bibliothèque';

  @override
  String get chapter_not_found => 'Le chapitre n\'a pas été trouvé';

  @override
  String get manga_not_found => 'Le manga n\'a pas été trouvé';

  @override
  String get chapter_settings_for_this_series => 'Pour cette série';

  @override
  String get lecture_mode => 'Mode de lecture';

  @override
  String get mark_as_read => 'Marquer comme lu';

  @override
  String get mark_as_unread => 'Marquer comme non lu';

  @override
  String last_page(int page) {
    return 'Page $page';
  }

  @override
  String get download => 'Télécharger';

  @override
  String get delete => 'Supprimer';

  @override
  String get cache_cleared => 'Cache vidé';

  @override
  String get no_page_found => 'Aucune page trouvée';

  @override
  String get no_manga_found => 'Aucun manga trouvé';
}
