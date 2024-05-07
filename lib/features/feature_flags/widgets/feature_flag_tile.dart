import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/iterable_extensions.dart';
import 'package:flutter_manga_reader/features/feature_flags/controllers/feature_flag_controller.dart';
import 'package:flutter_manga_reader/features/feature_flags/models/feature_flag.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeatureFlagTile extends ConsumerWidget {
  const FeatureFlagTile({
    super.key,
    required this.flag,
    this.onChanged,
  });

  final FeatureFlag flag;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(hasFeatureFlagProvider(flag));
    final desc = flag.description;

    return SwitchListTile(
      title: Text.rich(
        TextSpan(
          children: [
            if (flag.isRestartRequired) const WidgetSpan(child: _RestartIcon()),
            TextSpan(text: flag.name),
          ].separatedWith(const TextSpan(text: ' ')).toList(),
        ),
      ),
      subtitle: Text(desc),
      value: value,
      onChanged: (v) {
        ref.read(featureFlagControllerProvider.notifier).toggle(flag);
        onChanged?.call(v);
      },
    );
  }
}

class _RestartIcon extends StatelessWidget {
  const _RestartIcon();

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.warning_rounded,
      size: 20,
      color: Colors.orange,
    );
  }
}
