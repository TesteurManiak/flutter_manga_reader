import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';

typedef LocalizedStringFetcher = String Function(AppLocalizations strings);

extension BuildContextExtensions on BuildContext {
  /// Returns the [AppLocalizations] instance for this build context.
  AppLocalizations get strings => AppLocalizations.of(this);
}
