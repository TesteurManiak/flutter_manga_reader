import 'dart:math' as math;

import 'package:flutter/material.dart';

class SliverSeparatedChildBuilderDelegate extends SliverChildBuilderDelegate {
  SliverSeparatedChildBuilderDelegate({
    required NullableIndexedWidgetBuilder builder,
    required IndexedWidgetBuilder separatorBuilder,
    required int childCount,
  }) : super(
          (context, index) => _separatedBuilder(
            context,
            index,
            builder,
            separatorBuilder,
          ),
          childCount: math.max(0, childCount * 2 - 1),
          semanticIndexCallback: _separatedSemanticIndexCallback,
        );

  static int? _separatedSemanticIndexCallback(Widget _, int localIndex) {
    if (localIndex.isEven) {
      return localIndex ~/ 2;
    }
    return null;
  }

  static Widget? _separatedBuilder(
    BuildContext context,
    int index,
    NullableIndexedWidgetBuilder builder,
    IndexedWidgetBuilder separatorBuilder,
  ) {
    final int itemIndex = index ~/ 2;
    if (index.isEven) {
      return builder(context, itemIndex);
    }
    return separatorBuilder(context, itemIndex);
  }
}
