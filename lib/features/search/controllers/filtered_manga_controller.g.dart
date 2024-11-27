// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_manga_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredMangaControllerHash() =>
    r'01b7d19c3499d4b953076f184fc515e5670dae3d';

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

abstract class _$FilteredMangaController
    extends BuildlessAutoDisposeNotifier<PaginatedMangaState> {
  late final MangaDatasource datasource;

  PaginatedMangaState build(
    MangaDatasource datasource,
  );
}

/// See also [FilteredMangaController].
@ProviderFor(FilteredMangaController)
const filteredMangaControllerProvider = FilteredMangaControllerFamily();

/// See also [FilteredMangaController].
class FilteredMangaControllerFamily extends Family<PaginatedMangaState> {
  /// See also [FilteredMangaController].
  const FilteredMangaControllerFamily();

  /// See also [FilteredMangaController].
  FilteredMangaControllerProvider call(
    MangaDatasource datasource,
  ) {
    return FilteredMangaControllerProvider(
      datasource,
    );
  }

  @override
  FilteredMangaControllerProvider getProviderOverride(
    covariant FilteredMangaControllerProvider provider,
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
  String? get name => r'filteredMangaControllerProvider';
}

/// See also [FilteredMangaController].
class FilteredMangaControllerProvider extends AutoDisposeNotifierProviderImpl<
    FilteredMangaController, PaginatedMangaState> {
  /// See also [FilteredMangaController].
  FilteredMangaControllerProvider(
    MangaDatasource datasource,
  ) : this._internal(
          () => FilteredMangaController()..datasource = datasource,
          from: filteredMangaControllerProvider,
          name: r'filteredMangaControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredMangaControllerHash,
          dependencies: FilteredMangaControllerFamily._dependencies,
          allTransitiveDependencies:
              FilteredMangaControllerFamily._allTransitiveDependencies,
          datasource: datasource,
        );

  FilteredMangaControllerProvider._internal(
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
    covariant FilteredMangaController notifier,
  ) {
    return notifier.build(
      datasource,
    );
  }

  @override
  Override overrideWith(FilteredMangaController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilteredMangaControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<FilteredMangaController,
      PaginatedMangaState> createElement() {
    return _FilteredMangaControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredMangaControllerProvider &&
        other.datasource == datasource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasource.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilteredMangaControllerRef
    on AutoDisposeNotifierProviderRef<PaginatedMangaState> {
  /// The parameter `datasource` of this provider.
  MangaDatasource get datasource;
}

class _FilteredMangaControllerProviderElement
    extends AutoDisposeNotifierProviderElement<FilteredMangaController,
        PaginatedMangaState> with FilteredMangaControllerRef {
  _FilteredMangaControllerProviderElement(super.provider);

  @override
  MangaDatasource get datasource =>
      (origin as FilteredMangaControllerProvider).datasource;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
