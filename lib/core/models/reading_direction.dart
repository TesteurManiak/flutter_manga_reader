import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/gen/app_localizations.dart';

enum ReadingDirection {
  leftToRight(Axis.horizontal, _leftToRight),
  rightToLeft(Axis.horizontal, _rightToLeft, reverse: true),
  webtoon(Axis.vertical, _webtoon, isContinuous: true);

  const ReadingDirection(
    this.direction,
    this.localized, {
    this.isContinuous = false,
    this.reverse = false,
  });

  final Axis direction;
  final bool reverse;
  final bool isContinuous;
  final LocalizedStringFetcher localized;

  static String _leftToRight(AppLocalizations strings) => strings.left_to_right;
  static String _rightToLeft(AppLocalizations strings) => strings.right_to_left;
  static String _webtoon(AppLocalizations strings) => strings.webtoon;
}
