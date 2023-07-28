// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatasourceHash() => r'aecd9499c988a22f76ffb7649c3d58c275fcb91e';

/// See also [localDatasource].
@ProviderFor(localDatasource)
final localDatasourceProvider = Provider<LocalDatasource>.internal(
  localDatasource,
  name: r'localDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalDatasourceRef = ProviderRef<LocalDatasource>;
String _$watchMangasInLibraryHash() =>
    r'76e7db8f2ea22cb4edf3ab8af1269c17fab63267';

/// See also [watchMangasInLibrary].
@ProviderFor(watchMangasInLibrary)
final watchMangasInLibraryProvider =
    AutoDisposeStreamProvider<List<Manga>>.internal(
  watchMangasInLibrary,
  name: r'watchMangasInLibraryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchMangasInLibraryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WatchMangasInLibraryRef = AutoDisposeStreamProviderRef<List<Manga>>;
String _$getMangaHash() => r'f9ae2f1eab2867ebcb3d81b8cfe88382540abef4';

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

typedef GetMangaRef = AutoDisposeFutureProviderRef<Manga?>;

/// See also [getManga].
@ProviderFor(getManga)
const getMangaProvider = GetMangaFamily();

/// See also [getManga].
class GetMangaFamily extends Family<AsyncValue<Manga?>> {
  /// See also [getManga].
  const GetMangaFamily();

  /// See also [getManga].
  GetMangaProvider call(
    String mangaId,
  ) {
    return GetMangaProvider(
      mangaId,
    );
  }

  @override
  GetMangaProvider getProviderOverride(
    covariant GetMangaProvider provider,
  ) {
    return call(
      provider.mangaId,
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
  String? get name => r'getMangaProvider';
}

/// See also [getManga].
class GetMangaProvider extends AutoDisposeFutureProvider<Manga?> {
  /// See also [getManga].
  GetMangaProvider(
    this.mangaId,
  ) : super.internal(
          (ref) => getManga(
            ref,
            mangaId,
          ),
          from: getMangaProvider,
          name: r'getMangaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMangaHash,
          dependencies: GetMangaFamily._dependencies,
          allTransitiveDependencies: GetMangaFamily._allTransitiveDependencies,
        );

  final String mangaId;

  @override
  bool operator ==(Object other) {
    return other is GetMangaProvider && other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
