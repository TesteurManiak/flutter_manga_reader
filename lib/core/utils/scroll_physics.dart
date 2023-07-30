import 'dart:io';

import 'package:flutter/material.dart';

/// Android uses [ClampingScrollPhysics] so, if we want a bouncing behaviour on
/// Android we need to implement it using [ClampingScrollPhysics]. This allows
/// to implement "Pull to Refresh" on Android.
///
/// See more: https://github.com/flutter/flutter/issues/27977#issuecomment-464175636
class CustomClampingScrollPhysics extends ClampingScrollPhysics {
  const CustomClampingScrollPhysics({
    super.parent,
    this.canUnderscroll = false,
    this.canOverscroll = false,
  });

  final bool canUnderscroll;
  final bool canOverscroll;

  @override
  CustomClampingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomClampingScrollPhysics(
      parent: buildParent(ancestor),
      canUnderscroll: canUnderscroll,
      canOverscroll: canOverscroll,
    );
  }

  /// Removes the overscroll and underscroll conditions from the original
  /// [ClampingScrollPhysics.applyBoundaryConditions].
  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (value < position.pixels &&
        position.pixels <= position.minScrollExtent) {
      // underscroll
      return canUnderscroll ? 0.0 : value - position.pixels;
    }
    if (position.maxScrollExtent <= position.pixels &&
        position.pixels < value) {
      // overscroll
      return canOverscroll ? 0.0 : value - position.pixels;
    }
    if (value < position.minScrollExtent &&
        position.minScrollExtent < position.pixels) {
      // hit top edge
      return value - position.minScrollExtent;
    }
    if (position.pixels < position.maxScrollExtent &&
        position.maxScrollExtent < value) {
      // hit bottom edge
      return value - position.maxScrollExtent;
    }
    return 0;
  }
}

class PullToRefreshScrollPhysics extends ScrollPhysics {
  const PullToRefreshScrollPhysics({super.parent});

  @override
  ScrollPhysics applyTo(ScrollPhysics? ancestor) {
    if (Platform.isIOS) {
      return AlwaysScrollableScrollPhysics(parent: ancestor);
    }

    return CustomClampingScrollPhysics(
      parent: AlwaysScrollableScrollPhysics(parent: ancestor),
      canUnderscroll: true,
    );
  }
}
