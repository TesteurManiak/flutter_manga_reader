// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_unread_chapters.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUnreadChaptersHash() => r'dd5bf9aa7c931b3c37fabd9c8d3d47b55266d7b0';

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

/// See also [getUnreadChapters].
@ProviderFor(getUnreadChapters)
const getUnreadChaptersProvider = GetUnreadChaptersFamily();

/// See also [getUnreadChapters].
class GetUnreadChaptersFamily extends Family<int?> {
  /// See also [getUnreadChapters].
  const GetUnreadChaptersFamily();

  /// See also [getUnreadChapters].
  GetUnreadChaptersProvider call(
    SourceManga sourceManga,
  ) {
    return GetUnreadChaptersProvider(
      sourceManga,
    );
  }

  @override
  GetUnreadChaptersProvider getProviderOverride(
    covariant GetUnreadChaptersProvider provider,
  ) {
    return call(
      provider.sourceManga,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    getMangaByUrlAndSourceIdProvider,
    watchUnreadChaptersCountForMangaProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    getMangaByUrlAndSourceIdProvider,
    ...?getMangaByUrlAndSourceIdProvider.allTransitiveDependencies,
    watchUnreadChaptersCountForMangaProvider,
    ...?watchUnreadChaptersCountForMangaProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUnreadChaptersProvider';
}

/// See also [getUnreadChapters].
class GetUnreadChaptersProvider extends AutoDisposeProvider<int?> {
  /// See also [getUnreadChapters].
  GetUnreadChaptersProvider(
    SourceManga sourceManga,
  ) : this._internal(
          (ref) => getUnreadChapters(
            ref as GetUnreadChaptersRef,
            sourceManga,
          ),
          from: getUnreadChaptersProvider,
          name: r'getUnreadChaptersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUnreadChaptersHash,
          dependencies: GetUnreadChaptersFamily._dependencies,
          allTransitiveDependencies:
              GetUnreadChaptersFamily._allTransitiveDependencies,
          sourceManga: sourceManga,
        );

  GetUnreadChaptersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sourceManga,
  }) : super.internal();

  final SourceManga sourceManga;

  @override
  Override overrideWith(
    int? Function(GetUnreadChaptersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUnreadChaptersProvider._internal(
        (ref) => create(ref as GetUnreadChaptersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sourceManga: sourceManga,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int?> createElement() {
    return _GetUnreadChaptersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUnreadChaptersProvider &&
        other.sourceManga == sourceManga;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceManga.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetUnreadChaptersRef on AutoDisposeProviderRef<int?> {
  /// The parameter `sourceManga` of this provider.
  SourceManga get sourceManga;
}

class _GetUnreadChaptersProviderElement extends AutoDisposeProviderElement<int?>
    with GetUnreadChaptersRef {
  _GetUnreadChaptersProviderElement(super.provider);

  @override
  SourceManga get sourceManga =>
      (origin as GetUnreadChaptersProvider).sourceManga;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
