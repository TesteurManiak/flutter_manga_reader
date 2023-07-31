import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/providers/shared_prefs.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_controller.g.dart';

typedef _DidChangeLocalesCallback = void Function(List<Locale>? locales);

@riverpod
Locale fallbackLocale(FallbackLocaleRef ref) {
  return AppLocalizations.supportedLocales.first;
}

@riverpod
Locale systemLocale(SystemLocaleRef ref) {
  final fallback = ref.watch(fallbackLocaleProvider);

  ref.state = _resolveLocale(PlatformDispatcher.instance.locale, fallback);

  final observer = _LocaleObserver((locales) {
    ref.state = _resolveLocale(PlatformDispatcher.instance.locale, fallback);
  });

  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));

  return ref.state;
}

class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);

  final _DidChangeLocalesCallback _didChangeLocales;

  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}

@riverpod
class LocaleController extends _$LocaleController {
  static const _localeKey = 'locale';

  @override
  Locale build() {
    final system = ref.read(systemLocaleProvider);
    final fallback = ref.read(fallbackLocaleProvider);

    return _resolveLocale(system, fallback);
  }

  /// Initialize the locale.
  ///
  /// Used to load something if the locale is not set by the device settings
  /// (e.g: from the local storage).
  Future<void> init() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    final locale = prefs.getString(_localeKey);

    if (locale != null) await setLocale(Locale(locale));
  }

  /// Used to set the locale if it is supported.
  Future<void> setLocale(Locale locale) async {
    final newLocale = _resolveLocale(locale);
    if (newLocale == state) return;

    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setString(_localeKey, newLocale.languageCode);

    state = newLocale;
    return Future.value();
  }

  /// Used to reset the locale to the system locale.
  Future<void> reset() {
    return setLocale(ref.read(systemLocaleProvider));
  }
}

Locale _resolveLocale(Locale locale, [Locale? fallback]) {
  if (AppLocalizations.delegate.isSupported(locale)) {
    return AppLocalizations.supportedLocales.localeOf(locale);
  }

  if (fallback != null && AppLocalizations.delegate.isSupported(fallback)) {
    return AppLocalizations.supportedLocales.localeOf(fallback);
  }

  return AppLocalizations.supportedLocales.first;
}

extension on List<Locale> {
  Locale localeOf(Locale locale) {
    return firstWhere(
      (e) => e.languageCode == locale.languageCode,
      orElse: () => first,
    );
  }
}
