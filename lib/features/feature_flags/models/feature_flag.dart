// ignore_for_file: unused_element

enum FeatureFlag {
  // Add your feature flags here.
  test(
    id: 'test',
    name: 'Test',
    description: 'Test feature flag.',
  );

  const FeatureFlag({
    required this.id,
    required this.name,
    required this.description,
    this.initialState = false,
    this.isRestartRequired = false,
  });

  /// The unique identifier for this feature flag.
  ///
  /// Might be used to save the state of the feature flag in a database or
  /// shared preferences.
  final String id;

  final String name;
  final String description;

  /// The initial state of the feature flag.
  ///
  /// Defaults to `false`.
  final bool initialState;

  /// Whether the app needs to be restarted for the feature flag to take effect.
  ///
  /// Defaults to `false`.
  final bool isRestartRequired;
}
