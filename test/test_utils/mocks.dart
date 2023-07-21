import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';

const kDefaultLocale = Locale('fr');

class MockLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const MockLocalizationsDelegate({Locale? locale})
      : locale = locale ?? kDefaultLocale;

  final Locale locale;

  @override
  bool isSupported(Locale _) => true;

  @override
  Future<AppLocalizations> load(Locale _) {
    return AppLocalizations.delegate.load(locale);
  }

  @override
  bool shouldReload(MockLocalizationsDelegate _) => false;
}
