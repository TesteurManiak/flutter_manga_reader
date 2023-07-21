import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/home/controllers/home_view_controller.dart';
import 'package:flutter_manga_reader/features/home/widgets/counter_text.dart';
import 'package:flutter_manga_reader/features/settings/widgets/settings_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IncrementView extends StatelessWidget {
  const IncrementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.increment_title),
        actions: const [SettingsButton()],
      ),
      floatingActionButton: const _IncrementButton(),
      body: const Center(
        child: CounterText(),
      ),
    );
  }
}

class _IncrementButton extends ConsumerWidget {
  const _IncrementButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(homeViewControllerProvider.notifier).incrementCounter();
      },
      tooltip: context.strings.increment_tooltip,
      child: const Icon(Icons.add),
    );
  }
}
