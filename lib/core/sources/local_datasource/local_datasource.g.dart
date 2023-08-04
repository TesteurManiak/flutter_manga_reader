// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatasourceHash() => r'3fc9a93f9e3999c336e790f8338a6f15134f4003';

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
String _$watchAllMangasHash() => r'2027fb4ecf8e53167766756e0f872e70cd6279f4';

/// See also [watchAllMangas].
@ProviderFor(watchAllMangas)
final watchAllMangasProvider = AutoDisposeStreamProvider<List<Manga>>.internal(
  watchAllMangas,
  name: r'watchAllMangasProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchAllMangasHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WatchAllMangasRef = AutoDisposeStreamProviderRef<List<Manga>>;
String _$getMangaIdFromSourceHash() =>
    r'fb9f87b153e6c2927b048ae7d664df3037a09987';

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

typedef GetMangaIdFromSourceRef = AutoDisposeFutureProviderRef<int?>;

/// See also [getMangaIdFromSource].
@ProviderFor(getMangaIdFromSource)
const getMangaIdFromSourceProvider = GetMangaIdFromSourceFamily();

/// See also [getMangaIdFromSource].
class GetMangaIdFromSourceFamily extends Family<AsyncValue<int?>> {
  /// See also [getMangaIdFromSource].
  const GetMangaIdFromSourceFamily();

  /// See also [getMangaIdFromSource].
  GetMangaIdFromSourceProvider call(
    SourceManga sourceManga,
  ) {
    return GetMangaIdFromSourceProvider(
      sourceManga,
    );
  }

  @override
  GetMangaIdFromSourceProvider getProviderOverride(
    covariant GetMangaIdFromSourceProvider provider,
  ) {
    return call(
      provider.sourceManga,
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
  String? get name => r'getMangaIdFromSourceProvider';
}

/// See also [getMangaIdFromSource].
class GetMangaIdFromSourceProvider extends AutoDisposeFutureProvider<int?> {
  /// See also [getMangaIdFromSource].
  GetMangaIdFromSourceProvider(
    this.sourceManga,
  ) : super.internal(
          (ref) => getMangaIdFromSource(
            ref,
            sourceManga,
          ),
          from: getMangaIdFromSourceProvider,
          name: r'getMangaIdFromSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMangaIdFromSourceHash,
          dependencies: GetMangaIdFromSourceFamily._dependencies,
          allTransitiveDependencies:
              GetMangaIdFromSourceFamily._allTransitiveDependencies,
        );

  final SourceManga sourceManga;

  @override
  bool operator ==(Object other) {
    return other is GetMangaIdFromSourceProvider &&
        other.sourceManga == sourceManga;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceManga.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
