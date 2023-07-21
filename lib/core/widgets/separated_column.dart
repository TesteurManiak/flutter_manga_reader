import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/iterable_extensions.dart';

/// {@template separated_column}
/// Creates a vertical array of [children] separated by a [separator].
/// {@endtemplate}
class SeparatedColumn extends StatelessWidget {
  /// {@macro separated_column}
  const SeparatedColumn({
    super.key,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    required this.separator,
    required this.children,
  });

  /// Defaults to [MainAxisAlignment.start].
  final MainAxisAlignment? mainAxisAlignment;

  /// Defaults to [MainAxisSize.max].
  final MainAxisSize? mainAxisSize;

  /// Defaults to [CrossAxisAlignment.center].
  final CrossAxisAlignment? crossAxisAlignment;

  final TextDirection? textDirection;

  /// Defaults to [VerticalDirection.down].
  final VerticalDirection? verticalDirection;

  final TextBaseline? textBaseline;

  final Widget separator;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      textDirection: textDirection,
      verticalDirection: verticalDirection ?? VerticalDirection.down,
      textBaseline: textBaseline,
      children: [
        ...children.separatedWith(separator),
      ],
    );
  }
}
