import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get decrement_title => 'Décrémenter';

  @override
  String get decrement_tooltip => 'Décrémenter';

  @override
  String home_counter(Object count) {
    return 'Vous avez cliqué sur le bouton $count fois.';
  }

  @override
  String get home_go_to_increment => 'Aller à la page d\'incrémentation';

  @override
  String get home_go_to_decrement => 'Aller à la page de décrémentation';

  @override
  String get increment_title => 'Incrémenter';

  @override
  String get increment_tooltip => 'Incrémenter';

  @override
  String get settings_language_select => 'Langue';

  @override
  String get settings_theme_select => 'Thème';

  @override
  String get settings_title => 'Paramètres';

  @override
  String get theme_mode_system => 'Système';

  @override
  String get theme_mode_light => 'Clair';

  @override
  String get theme_mode_dark => 'Sombre';
}
