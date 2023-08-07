import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';

enum ReadingDirection {
  leftToRight(Axis.horizontal, _leftToRight),
  rightToLeft(Axis.horizontal, _rightToLeft, reverse: true),
  webtoon(Axis.vertical, _webtoon, pageSnapping: false);

  const ReadingDirection(
    this.direction,
    this.localized, {
    this.pageSnapping = true,
    this.reverse = false,
  });

  final Axis direction;
  final bool reverse;
  final bool pageSnapping;
  final LocalizedStringFetcher localized;

  static String _leftToRight(AppLocalizations strings) {
    return 'Left to right'.hardcoded;
  }

  static String _rightToLeft(AppLocalizations strings) {
    return 'Right to left'.hardcoded;
  }

  static String _webtoon(AppLocalizations strings) {
    return 'Webtoon'.hardcoded;
  }
}
