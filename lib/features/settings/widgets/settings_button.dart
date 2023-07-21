import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/home/navigation/route.dart';
import 'package:flutter_manga_reader/features/settings/navigation/route.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => const SettingsRoute().push<void>(context),
      icon: const Icon(Icons.settings),
    );
  }
}
