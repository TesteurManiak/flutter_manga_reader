import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/features/home/controllers/home_view_controller.dart';
import 'package:flutter_manga_reader/features/home/widgets/counter_text.dart';
import 'package:flutter_manga_reader/features/settings/widgets/settings_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DecrementView extends StatelessWidget {
  const DecrementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.decrement_title),
        actions: const [SettingsButton()],
      ),
      floatingActionButton: const _DecrementButton(),
      body: const Center(
        child: CounterText(),
      ),
    );
  }
}

class _DecrementButton extends ConsumerWidget {
  const _DecrementButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(homeViewControllerProvider.notifier).decrementCounter();
      },
      tooltip: context.strings.decrement_tooltip,
      child: const Icon(Icons.remove),
    );
  }
}
