// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_manga_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$popularMangaControllerHash() =>
    r'd0300fd08a2b02793f1096a494c2d1a3426a2222';

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

abstract class _$PopularMangaController
    extends BuildlessAutoDisposeNotifier<PaginatedMangaState> {
  late final MangaDatasource datasource;

  PaginatedMangaState build(
    MangaDatasource datasource,
  );
}

/// See also [PopularMangaController].
@ProviderFor(PopularMangaController)
const popularMangaControllerProvider = PopularMangaControllerFamily();

/// See also [PopularMangaController].
class PopularMangaControllerFamily extends Family<PaginatedMangaState> {
  /// See also [PopularMangaController].
  const PopularMangaControllerFamily();

  /// See also [PopularMangaController].
  PopularMangaControllerProvider call(
    MangaDatasource datasource,
  ) {
    return PopularMangaControllerProvider(
      datasource,
    );
  }

  @override
  PopularMangaControllerProvider getProviderOverride(
    covariant PopularMangaControllerProvider provider,
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
  String? get name => r'popularMangaControllerProvider';
}

/// See also [PopularMangaController].
class PopularMangaControllerProvider extends AutoDisposeNotifierProviderImpl<
    PopularMangaController, PaginatedMangaState> {
  /// See also [PopularMangaController].
  PopularMangaControllerProvider(
    this.datasource,
  ) : super.internal(
          () => PopularMangaController()..datasource = datasource,
          from: popularMangaControllerProvider,
          name: r'popularMangaControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$popularMangaControllerHash,
          dependencies: PopularMangaControllerFamily._dependencies,
          allTransitiveDependencies:
              PopularMangaControllerFamily._allTransitiveDependencies,
        );

  final MangaDatasource datasource;

  @override
  bool operator ==(Object other) {
    return other is PopularMangaControllerProvider &&
        other.datasource == datasource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasource.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  PaginatedMangaState runNotifierBuild(
    covariant PopularMangaController notifier,
  ) {
    return notifier.build(
      datasource,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
