import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @library_title.
  ///
  /// In fr, this message translates to:
  /// **'Bibliothèque'**
  String get library_title;

  /// No description provided for @library_empty.
  ///
  /// In fr, this message translates to:
  /// **'Votre bibliothèque est vide'**
  String get library_empty;

  /// No description provided for @settings_title.
  ///
  /// In fr, this message translates to:
  /// **'Paramètres'**
  String get settings_title;

  /// No description provided for @settings_general.
  ///
  /// In fr, this message translates to:
  /// **'Général'**
  String get settings_general;

  /// No description provided for @settings_general_subtitle.
  ///
  /// In fr, this message translates to:
  /// **'Langue de l\'application, notifications'**
  String get settings_general_subtitle;

  /// No description provided for @settings_general_language.
  ///
  /// In fr, this message translates to:
  /// **'Langue de l\'application'**
  String get settings_general_language;

  /// No description provided for @settings_general_language_default.
  ///
  /// In fr, this message translates to:
  /// **'Par défaut'**
  String get settings_general_language_default;

  /// No description provided for @settings_appearance.
  ///
  /// In fr, this message translates to:
  /// **'Apparence'**
  String get settings_appearance;

  /// No description provided for @settings_appearance_subtitle.
  ///
  /// In fr, this message translates to:
  /// **'Thème, format de la date et de l\'heure'**
  String get settings_appearance_subtitle;

  /// No description provided for @settings_appearance_dark_mode.
  ///
  /// In fr, this message translates to:
  /// **'Mode sombre'**
  String get settings_appearance_dark_mode;

  /// No description provided for @settings_appearance_system_default.
  ///
  /// In fr, this message translates to:
  /// **'Par défaut du système'**
  String get settings_appearance_system_default;

  /// No description provided for @settings_appearance_disabled.
  ///
  /// In fr, this message translates to:
  /// **'Désactivé'**
  String get settings_appearance_disabled;

  /// No description provided for @settings_appearance_enabled.
  ///
  /// In fr, this message translates to:
  /// **'Activé'**
  String get settings_appearance_enabled;

  /// No description provided for @settings_library.
  ///
  /// In fr, this message translates to:
  /// **'Bibliothèque'**
  String get settings_library;

  /// No description provided for @settings_library_subtitle.
  ///
  /// In fr, this message translates to:
  /// **'Catégories, mise à jour globale'**
  String get settings_library_subtitle;

  /// No description provided for @settings_about.
  ///
  /// In fr, this message translates to:
  /// **'À propos'**
  String get settings_about;

  /// No description provided for @search_title.
  ///
  /// In fr, this message translates to:
  /// **'Explorer'**
  String get search_title;

  /// No description provided for @search_empty.
  ///
  /// In fr, this message translates to:
  /// **'Aucun manga trouvé'**
  String get search_empty;

  /// No description provided for @manga_status_unknown.
  ///
  /// In fr, this message translates to:
  /// **'Inconnu'**
  String get manga_status_unknown;

  /// No description provided for @manga_status_ongoing.
  ///
  /// In fr, this message translates to:
  /// **'En cours'**
  String get manga_status_ongoing;

  /// No description provided for @manga_status_completed.
  ///
  /// In fr, this message translates to:
  /// **'Terminé'**
  String get manga_status_completed;

  /// No description provided for @manga_status_licensed.
  ///
  /// In fr, this message translates to:
  /// **'Licencié'**
  String get manga_status_licensed;

  /// No description provided for @manga_status_publishing_finished.
  ///
  /// In fr, this message translates to:
  /// **'Terminé'**
  String get manga_status_publishing_finished;

  /// No description provided for @manga_status_canceled.
  ///
  /// In fr, this message translates to:
  /// **'Annulé'**
  String get manga_status_canceled;

  /// No description provided for @manga_status_on_hiatus.
  ///
  /// In fr, this message translates to:
  /// **'En pause'**
  String get manga_status_on_hiatus;

  /// No description provided for @generic_error.
  ///
  /// In fr, this message translates to:
  /// **'Une erreur est survenue'**
  String get generic_error;

  /// No description provided for @generic_cancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get generic_cancel;

  /// No description provided for @details_add_to_library.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter à la bibliothèque'**
  String get details_add_to_library;

  /// No description provided for @details_in_library.
  ///
  /// In fr, this message translates to:
  /// **'Dans la bibliothèque'**
  String get details_in_library;

  /// No description provided for @details_webview.
  ///
  /// In fr, this message translates to:
  /// **'WebView'**
  String get details_webview;

  /// No description provided for @filter_popular.
  ///
  /// In fr, this message translates to:
  /// **'Populaire'**
  String get filter_popular;

  /// No description provided for @filter_latest.
  ///
  /// In fr, this message translates to:
  /// **'Récents'**
  String get filter_latest;

  /// No description provided for @filter_other.
  ///
  /// In fr, this message translates to:
  /// **'Filtre'**
  String get filter_other;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
