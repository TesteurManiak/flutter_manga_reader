import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/feature_flags/controllers/feature_flag_controller.dart';
import 'package:flutter_manga_reader/features/feature_flags/widgets/feature_flag_tile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeatureFlagsView extends ConsumerWidget {
  const FeatureFlagsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featureFlags = ref.watch(featureFlagControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Feature flags')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          ...featureFlags.keys.map((flag) {
            return FeatureFlagTile(flag: flag);
          }),
        ],
      ),
    );
  }
}
