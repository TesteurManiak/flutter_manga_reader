// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchControllerHash() => r'462829d0034f47683c2c221eedfac7707083711b';

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

abstract class _$SearchController
    extends BuildlessAutoDisposeNotifier<PaginatedMangaState> {
  late final MangaDatasource datasource;

  PaginatedMangaState build(
    MangaDatasource datasource,
  );
}

/// See also [SearchController].
@ProviderFor(SearchController)
const searchControllerProvider = SearchControllerFamily();

/// See also [SearchController].
class SearchControllerFamily extends Family<PaginatedMangaState> {
  /// See also [SearchController].
  const SearchControllerFamily();

  /// See also [SearchController].
  SearchControllerProvider call(
    MangaDatasource datasource,
  ) {
    return SearchControllerProvider(
      datasource,
    );
  }

  @override
  SearchControllerProvider getProviderOverride(
    covariant SearchControllerProvider provider,
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
  String? get name => r'searchControllerProvider';
}

/// See also [SearchController].
class SearchControllerProvider extends AutoDisposeNotifierProviderImpl<
    SearchController, PaginatedMangaState> {
  /// See also [SearchController].
  SearchControllerProvider(
    this.datasource,
  ) : super.internal(
          () => SearchController()..datasource = datasource,
          from: searchControllerProvider,
          name: r'searchControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchControllerHash,
          dependencies: SearchControllerFamily._dependencies,
          allTransitiveDependencies:
              SearchControllerFamily._allTransitiveDependencies,
        );

  final MangaDatasource datasource;

  @override
  bool operator ==(Object other) {
    return other is SearchControllerProvider && other.datasource == datasource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasource.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  PaginatedMangaState runNotifierBuild(
    covariant SearchController notifier,
  ) {
    return notifier.build(
      datasource,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
