// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_manga_from_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMangaFromIdHash() => r'52be40324461c36efb8b65769b8855734977470d';

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

/// See also [getMangaFromId].
@ProviderFor(getMangaFromId)
const getMangaFromIdProvider = GetMangaFromIdFamily();

/// See also [getMangaFromId].
class GetMangaFromIdFamily extends Family<AsyncValue<Manga?>> {
  /// See also [getMangaFromId].
  const GetMangaFromIdFamily();

  /// See also [getMangaFromId].
  GetMangaFromIdProvider call(
    int id,
  ) {
    return GetMangaFromIdProvider(
      id,
    );
  }

  @override
  GetMangaFromIdProvider getProviderOverride(
    covariant GetMangaFromIdProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    localDatasourceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    localDatasourceProvider,
    ...?localDatasourceProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMangaFromIdProvider';
}

/// See also [getMangaFromId].
class GetMangaFromIdProvider extends AutoDisposeFutureProvider<Manga?> {
  /// See also [getMangaFromId].
  GetMangaFromIdProvider(
    int id,
  ) : this._internal(
          (ref) => getMangaFromId(
            ref as GetMangaFromIdRef,
            id,
          ),
          from: getMangaFromIdProvider,
          name: r'getMangaFromIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMangaFromIdHash,
          dependencies: GetMangaFromIdFamily._dependencies,
          allTransitiveDependencies:
              GetMangaFromIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetMangaFromIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Manga?> Function(GetMangaFromIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMangaFromIdProvider._internal(
        (ref) => create(ref as GetMangaFromIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Manga?> createElement() {
    return _GetMangaFromIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMangaFromIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMangaFromIdRef on AutoDisposeFutureProviderRef<Manga?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetMangaFromIdProviderElement
    extends AutoDisposeFutureProviderElement<Manga?> with GetMangaFromIdRef {
  _GetMangaFromIdProviderElement(super.provider);

  @override
  int get id => (origin as GetMangaFromIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
