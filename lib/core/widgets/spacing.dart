import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppSpacing extends StatelessWidget {
  const AppSpacing(this.size, {super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Gap(size);
  }
}

class AppSliverSpacing extends StatelessWidget {
  const AppSliverSpacing(this.size, {super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SliverGap(size);
  }
}
