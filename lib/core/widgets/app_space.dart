import 'package:flutter/material.dart';

class SliverAppSpace extends StatelessWidget {
  const SliverAppSpace(
    this.size, {
    super.key,
    this.direction,
  });

  final double size;
  final Axis? direction;

  @override
  Widget build(BuildContext context) {
    final localAxis = direction ?? Axis.vertical;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: localAxis == Axis.vertical ? size : null,
        width: localAxis == Axis.horizontal ? size : null,
      ),
    );
  }
}
