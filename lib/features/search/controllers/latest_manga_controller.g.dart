// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_manga_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$latestMangaControllerHash() =>
    r'dcb04ca299a2f1aed00e398d1ecaba315c145e50';

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

abstract class _$LatestMangaController
    extends BuildlessAutoDisposeNotifier<PaginatedMangaState> {
  late final MangaDatasource datasource;

  PaginatedMangaState build(
    MangaDatasource datasource,
  );
}

/// See also [LatestMangaController].
@ProviderFor(LatestMangaController)
const latestMangaControllerProvider = LatestMangaControllerFamily();

/// See also [LatestMangaController].
class LatestMangaControllerFamily extends Family<PaginatedMangaState> {
  /// See also [LatestMangaController].
  const LatestMangaControllerFamily();

  /// See also [LatestMangaController].
  LatestMangaControllerProvider call(
    MangaDatasource datasource,
  ) {
    return LatestMangaControllerProvider(
      datasource,
    );
  }

  @override
  LatestMangaControllerProvider getProviderOverride(
    covariant LatestMangaControllerProvider provider,
  ) {
    return call(
      provider.datasource,
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
  String? get name => r'latestMangaControllerProvider';
}

/// See also [LatestMangaController].
class LatestMangaControllerProvider extends AutoDisposeNotifierProviderImpl<
    LatestMangaController, PaginatedMangaState> {
  /// See also [LatestMangaController].
  LatestMangaControllerProvider(
    MangaDatasource datasource,
  ) : this._internal(
          () => LatestMangaController()..datasource = datasource,
          from: latestMangaControllerProvider,
          name: r'latestMangaControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$latestMangaControllerHash,
          dependencies: LatestMangaControllerFamily._dependencies,
          allTransitiveDependencies:
              LatestMangaControllerFamily._allTransitiveDependencies,
          datasource: datasource,
        );

  LatestMangaControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.datasource,
  }) : super.internal();

  final MangaDatasource datasource;

  @override
  PaginatedMangaState runNotifierBuild(
    covariant LatestMangaController notifier,
  ) {
    return notifier.build(
      datasource,
    );
  }

  @override
  Override overrideWith(LatestMangaController Function() create) {
    return ProviderOverride(
      origin: this,
      override: LatestMangaControllerProvider._internal(
        () => create()..datasource = datasource,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        datasource: datasource,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<LatestMangaController, PaginatedMangaState>
      createElement() {
    return _LatestMangaControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LatestMangaControllerProvider &&
        other.datasource == datasource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasource.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LatestMangaControllerRef
    on AutoDisposeNotifierProviderRef<PaginatedMangaState> {
  /// The parameter `datasource` of this provider.
  MangaDatasource get datasource;
}

class _LatestMangaControllerProviderElement
    extends AutoDisposeNotifierProviderElement<LatestMangaController,
        PaginatedMangaState> with LatestMangaControllerRef {
  _LatestMangaControllerProviderElement(super.provider);

  @override
  MangaDatasource get datasource =>
      (origin as LatestMangaControllerProvider).datasource;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
