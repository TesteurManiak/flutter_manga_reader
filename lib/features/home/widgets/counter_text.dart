import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/home/controllers/home_view_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterText extends ConsumerWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(
      homeViewControllerProvider.select((v) => v.counter),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        context.strings.home_counter(counter),
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
