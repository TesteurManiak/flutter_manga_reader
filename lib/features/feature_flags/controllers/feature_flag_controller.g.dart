// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_flag_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hasFeatureFlagHash() => r'e94ddb01f6864999199be1dadad3feb344e1b5a5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [hasFeatureFlag].
@ProviderFor(hasFeatureFlag)
const hasFeatureFlagProvider = HasFeatureFlagFamily();

/// See also [hasFeatureFlag].
class HasFeatureFlagFamily extends Family<bool> {
  /// See also [hasFeatureFlag].
  const HasFeatureFlagFamily();

  /// See also [hasFeatureFlag].
  HasFeatureFlagProvider call(
    FeatureFlag flag,
  ) {
    return HasFeatureFlagProvider(
      flag,
    );
  }

  @override
  HasFeatureFlagProvider getProviderOverride(
    covariant HasFeatureFlagProvider provider,
  ) {
    return call(
      provider.flag,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hasFeatureFlagProvider';
}

/// See also [hasFeatureFlag].
class HasFeatureFlagProvider extends AutoDisposeProvider<bool> {
  /// See also [hasFeatureFlag].
  HasFeatureFlagProvider(
    FeatureFlag flag,
  ) : this._internal(
          (ref) => hasFeatureFlag(
            ref as HasFeatureFlagRef,
            flag,
          ),
          from: hasFeatureFlagProvider,
          name: r'hasFeatureFlagProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hasFeatureFlagHash,
          dependencies: HasFeatureFlagFamily._dependencies,
          allTransitiveDependencies:
              HasFeatureFlagFamily._allTransitiveDependencies,
          flag: flag,
        );

  HasFeatureFlagProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.flag,
  }) : super.internal();

  final FeatureFlag flag;

  @override
  Override overrideWith(
    bool Function(HasFeatureFlagRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HasFeatureFlagProvider._internal(
        (ref) => create(ref as HasFeatureFlagRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        flag: flag,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _HasFeatureFlagProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HasFeatureFlagProvider && other.flag == flag;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, flag.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HasFeatureFlagRef on AutoDisposeProviderRef<bool> {
  /// The parameter `flag` of this provider.
  FeatureFlag get flag;
}

class _HasFeatureFlagProviderElement extends AutoDisposeProviderElement<bool>
    with HasFeatureFlagRef {
  _HasFeatureFlagProviderElement(super.provider);

  @override
  FeatureFlag get flag => (origin as HasFeatureFlagProvider).flag;
}

String _$featureFlagControllerHash() =>
    r'9e8cc789cffb2c59c9493cfd3ea8b9af4f9461b2';

/// See also [FeatureFlagController].
@ProviderFor(FeatureFlagController)
final featureFlagControllerProvider =
    NotifierProvider<FeatureFlagController, Map<FeatureFlag, bool>>.internal(
  FeatureFlagController.new,
  name: r'featureFlagControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$featureFlagControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FeatureFlagController = Notifier<Map<FeatureFlag, bool>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
