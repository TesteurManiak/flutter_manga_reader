import 'package:flutter_manga_reader/core/providers/shared_prefs.dart';
import 'package:flutter_manga_reader/features/feature_flags/models/feature_flag.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feature_flag_controller.g.dart';

@Riverpod(keepAlive: true)
class FeatureFlagController extends _$FeatureFlagController {
  @override
  Map<FeatureFlag, bool> build() {
    return Map.fromEntries(
      FeatureFlag.values.map((e) => MapEntry(e, e.initialState)),
    );
  }

  /// Toggles the state of a [FeatureFlag].
  Future<void> toggle(FeatureFlag flag) async {
    final currentState = Map<FeatureFlag, bool>.from(state);

    final newValue = !(state[flag] ?? flag.initialState);
    currentState[flag] = newValue;

    final sharedPrefs = await ref.read(sharedPreferencesProvider.future);
    await sharedPrefs.setBool(flag.id, newValue);

    state = currentState;
  }

  /// Fetch the current state of the [FeatureFlag]s from the
  /// `SharedPreferences`.
  Future<void> init() async {
    final sharedPrefs = await ref.read(sharedPreferencesProvider.future);
    final currentState = Map<FeatureFlag, bool>.from(state);

    for (final flag in FeatureFlag.values) {
      final value = sharedPrefs.getBool(flag.id) ?? flag.initialState;
      currentState[flag] = value;
    }

    state = currentState;
  }
}

@riverpod
bool hasFeatureFlag(HasFeatureFlagRef ref, FeatureFlag flag) {
  final flags = ref.watch(featureFlagControllerProvider);
  return flags[flag] ?? flag.initialState;
}
