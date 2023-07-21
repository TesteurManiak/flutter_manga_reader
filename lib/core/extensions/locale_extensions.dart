import 'dart:ui';

import 'package:flutter_manga_reader/core/core.dart';

extension LocaleExtensions on Locale {
  /// Returns the locale name in its corresponding language.
  String translatedLocaleName() {
    switch (toLanguageTag()) {
      case 'de':
      case 'de-DE':
        return 'Deutsh';
      case 'en':
      case 'en-US':
        return 'English';
      case 'es':
      case 'es-ES':
        return 'Español';
      case 'fr':
      case 'fr-FR':
        return 'Français';
      case 'it':
      case 'it-IT':
        return 'Italiano';
      case 'ja':
      case 'ja-JP':
        return '日本語';
      case 'ko':
      case 'ko-KR':
        return '한국어';
      case 'pt':
      case 'pt-BR':
        return 'Português';
      case 'ru':
      case 'ru-RU':
        return 'Русский';
      case 'zh':
      case 'zh-CN':
        return '简体中文';
      case 'zh-TW':
        return '繁體中文';
      default:
        log.severe('Locale $this not found for translatedLocaleName().');
        return 'N/A';
    }
  }
}
