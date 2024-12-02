// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_clients.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cacheClientHash() => r'3c8969f096929acd22ef1afdbb4b88a3d9fc06ea';

/// See also [cacheClient].
@ProviderFor(cacheClient)
final cacheClientProvider = Provider<Client>.internal(
  cacheClient,
  name: r'cacheClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cacheClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CacheClientRef = ProviderRef<Client>;
String _$sourceClientHash() => r'eb7fbab69e41a1071f8476842baae8d8883467b6';

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

/// See also [sourceClient].
@ProviderFor(sourceClient)
const sourceClientProvider = SourceClientFamily();

/// See also [sourceClient].
class SourceClientFamily extends Family<RestClient> {
  /// See also [sourceClient].
  const SourceClientFamily();

  /// See also [sourceClient].
  SourceClientProvider call(
    String baseUrl,
  ) {
    return SourceClientProvider(
      baseUrl,
    );
  }

  @override
  SourceClientProvider getProviderOverride(
    covariant SourceClientProvider provider,
  ) {
    return call(
      provider.baseUrl,
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
  String? get name => r'sourceClientProvider';
}

/// See also [sourceClient].
class SourceClientProvider extends Provider<RestClient> {
  /// See also [sourceClient].
  SourceClientProvider(
    String baseUrl,
  ) : this._internal(
          (ref) => sourceClient(
            ref as SourceClientRef,
            baseUrl,
          ),
          from: sourceClientProvider,
          name: r'sourceClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sourceClientHash,
          dependencies: SourceClientFamily._dependencies,
          allTransitiveDependencies:
              SourceClientFamily._allTransitiveDependencies,
          baseUrl: baseUrl,
        );

  SourceClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(
    RestClient Function(SourceClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SourceClientProvider._internal(
        (ref) => create(ref as SourceClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  ProviderElement<RestClient> createElement() {
    return _SourceClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SourceClientProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SourceClientRef on ProviderRef<RestClient> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _SourceClientProviderElement extends ProviderElement<RestClient>
    with SourceClientRef {
  _SourceClientProviderElement(super.provider);

  @override
  String get baseUrl => (origin as SourceClientProvider).baseUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
