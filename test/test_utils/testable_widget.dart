import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/design_system/design_system.dart';

import 'mocks.dart';

final kDefaultTheme = AppTheme.light();

class TestableApp extends StatelessWidget {
  const TestableApp({
    super.key,
    this.theme,
    this.locale,
    required this.child,
  });

  final ThemeData? theme;
  final Locale? locale;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme ?? kDefaultTheme,
      locale: locale,
      localizationsDelegates: [MockLocalizationsDelegate(locale: locale)],
      home: child,
    );
  }
}

class TestableWidget extends StatelessWidget {
  const TestableWidget({
    super.key,
    this.theme,
    this.locale,
    required this.child,
  });

  final ThemeData? theme;
  final Locale? locale;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme ?? kDefaultTheme,
      child: Localizations.override(
        context: context,
        locale: locale,
        delegates: [MockLocalizationsDelegate(locale: locale)],
        child: child,
      ),
    );
  }
}
