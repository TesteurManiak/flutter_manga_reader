import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/env.dart';
import 'package:flutter_manga_reader/features/decrement/navigation/route.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/home/widgets/counter_text.dart';
import 'package:flutter_manga_reader/features/increment/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/widgets/settings_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Scaffold(
      appBar: AppBar(
        title: Text(env.title),
        actions: const [SettingsButton()],
      ),
      body: Center(
        child: SeparatedColumn(
          mainAxisSize: MainAxisSize.min,
          separator: const SizedBox(height: 16),
          children: [
            const CounterText(),
            ElevatedButton(
              onPressed: () => const IncrementRoute().go(context),
              child: Text(strings.home_go_to_increment),
            ),
            ElevatedButton(
              onPressed: () => const DecrementRoute().go(context),
              child: Text(strings.home_go_to_decrement),
            ),
          ],
        ),
      ),
    );
  }
}
