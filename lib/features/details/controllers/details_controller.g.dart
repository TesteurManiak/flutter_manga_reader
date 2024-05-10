// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scopedSelectionModeHash() =>
    r'453b49c85870907597bfdd2059d4a17818bb57ab';

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

/// See also [scopedSelectionMode].
@ProviderFor(scopedSelectionMode)
const scopedSelectionModeProvider = ScopedSelectionModeFamily();

/// See also [scopedSelectionMode].
class ScopedSelectionModeFamily extends Family<bool> {
  /// See also [scopedSelectionMode].
  const ScopedSelectionModeFamily();

  /// See also [scopedSelectionMode].
  ScopedSelectionModeProvider call(
    int mangaId,
  ) {
    return ScopedSelectionModeProvider(
      mangaId,
    );
  }

  @override
  ScopedSelectionModeProvider getProviderOverride(
    covariant ScopedSelectionModeProvider provider,
  ) {
    return call(
      provider.mangaId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    detailsControllerProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    detailsControllerProvider,
    ...?detailsControllerProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'scopedSelectionModeProvider';
}

/// See also [scopedSelectionMode].
class ScopedSelectionModeProvider extends AutoDisposeProvider<bool> {
  /// See also [scopedSelectionMode].
  ScopedSelectionModeProvider(
    int mangaId,
  ) : this._internal(
          (ref) => scopedSelectionMode(
            ref as ScopedSelectionModeRef,
            mangaId,
          ),
          from: scopedSelectionModeProvider,
          name: r'scopedSelectionModeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$scopedSelectionModeHash,
          dependencies: ScopedSelectionModeFamily._dependencies,
          allTransitiveDependencies:
              ScopedSelectionModeFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  ScopedSelectionModeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mangaId,
  }) : super.internal();

  final int mangaId;

  @override
  Override overrideWith(
    bool Function(ScopedSelectionModeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ScopedSelectionModeProvider._internal(
        (ref) => create(ref as ScopedSelectionModeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mangaId: mangaId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _ScopedSelectionModeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScopedSelectionModeProvider && other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ScopedSelectionModeRef on AutoDisposeProviderRef<bool> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _ScopedSelectionModeProviderElement
    extends AutoDisposeProviderElement<bool> with ScopedSelectionModeRef {
  _ScopedSelectionModeProviderElement(super.provider);

  @override
  int get mangaId => (origin as ScopedSelectionModeProvider).mangaId;
}

String _$detailsControllerHash() => r'f1ad59371fefe607f9a99ae7af88d271243882e1';

abstract class _$DetailsController
    extends BuildlessAutoDisposeNotifier<DetailsState> {
  late final int mangaId;

  DetailsState build(
    int mangaId,
  );
}

/// See also [DetailsController].
@ProviderFor(DetailsController)
const detailsControllerProvider = DetailsControllerFamily();

/// See also [DetailsController].
class DetailsControllerFamily extends Family<DetailsState> {
  /// See also [DetailsController].
  const DetailsControllerFamily();

  /// See also [DetailsController].
  DetailsControllerProvider call(
    int mangaId,
  ) {
    return DetailsControllerProvider(
      mangaId,
    );
  }

  @override
  DetailsControllerProvider getProviderOverride(
    covariant DetailsControllerProvider provider,
  ) {
    return call(
      provider.mangaId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>{
    watchMangaProvider,
    scopedMangaDatasourceProvider,
    localDatasourceProvider,
    isMangaFavoriteProvider,
    downloadQueueControllerProvider,
    watchChaptersForMangaProvider
  };

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    watchMangaProvider,
    ...?watchMangaProvider.allTransitiveDependencies,
    scopedMangaDatasourceProvider,
    ...?scopedMangaDatasourceProvider.allTransitiveDependencies,
    localDatasourceProvider,
    ...?localDatasourceProvider.allTransitiveDependencies,
    isMangaFavoriteProvider,
    ...?isMangaFavoriteProvider.allTransitiveDependencies,
    downloadQueueControllerProvider,
    ...?downloadQueueControllerProvider.allTransitiveDependencies,
    watchChaptersForMangaProvider,
    ...?watchChaptersForMangaProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailsControllerProvider';
}

/// See also [DetailsController].
class DetailsControllerProvider
    extends AutoDisposeNotifierProviderImpl<DetailsController, DetailsState> {
  /// See also [DetailsController].
  DetailsControllerProvider(
    int mangaId,
  ) : this._internal(
          () => DetailsController()..mangaId = mangaId,
          from: detailsControllerProvider,
          name: r'detailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailsControllerHash,
          dependencies: DetailsControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailsControllerFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  DetailsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mangaId,
  }) : super.internal();

  final int mangaId;

  @override
  DetailsState runNotifierBuild(
    covariant DetailsController notifier,
  ) {
    return notifier.build(
      mangaId,
    );
  }

  @override
  Override overrideWith(DetailsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailsControllerProvider._internal(
        () => create()..mangaId = mangaId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mangaId: mangaId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DetailsController, DetailsState>
      createElement() {
    return _DetailsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailsControllerProvider && other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DetailsControllerRef on AutoDisposeNotifierProviderRef<DetailsState> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _DetailsControllerProviderElement
    extends AutoDisposeNotifierProviderElement<DetailsController, DetailsState>
    with DetailsControllerRef {
  _DetailsControllerProviderElement(super.provider);

  @override
  int get mangaId => (origin as DetailsControllerProvider).mangaId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
