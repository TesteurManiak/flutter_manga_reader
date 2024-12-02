import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/providers/shared_prefs.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_controller.g.dart';

typedef _DidChangeLocalesCallback = void Function(List<Locale>? locales);

@Riverpod(keepAlive: true)
Locale fallbackLocale(Ref ref) {
  return AppLocalizations.supportedLocales.first;
}

@Riverpod(keepAlive: true)
Locale systemLocale(Ref ref) {
  final fallback = ref.watch(fallbackLocaleProvider);
  final locale =
      _resolveLocale(ui.PlatformDispatcher.instance.locale, fallback);

  final observer = _LocaleObserver((_) => ref.invalidateSelf());
  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));

  return locale;
}

class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);

  final _DidChangeLocalesCallback _didChangeLocales;

  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}

@Riverpod(keepAlive: true)
class LocaleController extends _$LocaleController {
  static const localeKey = 'locale';

  @override
  Locale build() {
    final system = ref.watch(systemLocaleProvider);
    final fallback = ref.watch(fallbackLocaleProvider);

    return _resolveLocale(system, fallback);
  }

  /// Initialize the locale.
  ///
  /// Used to load something if the locale is not set by the device settings
  /// (e.g: from the local storage).
  Future<void> init() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    final locale = prefs.getString(localeKey);

    if (locale != null) await setLocale(Locale(locale));
  }

  /// Used to set the locale if it is supported.
  Future<void> setLocale(Locale locale) async {
    final newLocale = _resolveLocale(locale);
    if (newLocale == state) return;

    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setString(localeKey, newLocale.languageCode);

    state = newLocale;
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
