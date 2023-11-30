import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const _kMinimumDuration = Duration(milliseconds: 800);

/// {@template sliver_pull_to_refresh}
/// The sliver way to create a pull to refresh effect.
/// {@endtemplate}
class SliverPullToRefresh extends StatelessWidget {
  /// {@macro sliver_pull_to_refresh}
  const SliverPullToRefresh({
    super.key,
    required this.onRefresh,
    this.minimumLoaderDuration,
  });

  /// Minimum amount of time, to keep the AppLoader visible to the user.
  /// If [onRefresh] execution time is lower than [minimumLoaderDuration], then
  /// the execution of [onRefresh] is artificially delayed by the needed time
  /// amount.
  ///
  /// Defaults to 800ms.
  final Duration? minimumLoaderDuration;

  final AsyncCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      refreshIndicatorExtent: 48,
      refreshTriggerPullDistance: 64,
      onRefresh: _handleRefresh,
      builder: (_, refreshState, pulledExtent, refreshTriggerPullDistance, __) {
        final percentageComplete =
            (pulledExtent / refreshTriggerPullDistance).clamp(0.0, 1.0);

        return Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 16,
                right: 0,
                left: 0,
                child: _ActivityIndicator(
                  refreshState: refreshState,
                  progress: percentageComplete,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _handleRefresh() {
    final effectiveMinimumLoaderDuration =
        minimumLoaderDuration ?? _kMinimumDuration;

    return Future.wait<void>([
      onRefresh(),
      Future.delayed(effectiveMinimumLoaderDuration),
    ]);
  }
}

class _ActivityIndicator extends StatelessWidget {
  const _ActivityIndicator({
    required this.refreshState,
    required this.progress,
  });

  final RefreshIndicatorMode refreshState;
  final double progress;

  @override
  Widget build(BuildContext context) {
    const opacityCurve = Interval(0, 0.35, curve: Curves.easeInOut);

    return switch (refreshState) {
      RefreshIndicatorMode.inactive ||
      RefreshIndicatorMode.drag =>
        const SizedBox.shrink(),
      _ => Opacity(
          opacity: opacityCurve.transform(progress),
          child: const UnconstrainedBox(
            child: RefreshProgressIndicator(),
          ),
        ),
    };
  }
}
