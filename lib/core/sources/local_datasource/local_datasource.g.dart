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
String _$watchMangaHash() => r'764b8ddbfc7c85e0c5ad6f0979f7cd2f989c8518';

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

typedef WatchMangaRef = StreamProviderRef<Manga?>;

/// See also [watchManga].
@ProviderFor(watchManga)
const watchMangaProvider = WatchMangaFamily();

/// See also [watchManga].
class WatchMangaFamily extends Family<AsyncValue<Manga?>> {
  /// See also [watchManga].
  const WatchMangaFamily();

  /// See also [watchManga].
  WatchMangaProvider call(
    int id,
  ) {
    return WatchMangaProvider(
      id,
    );
  }

  @override
  WatchMangaProvider getProviderOverride(
    covariant WatchMangaProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'watchMangaProvider';
}

/// See also [watchManga].
class WatchMangaProvider extends StreamProvider<Manga?> {
  /// See also [watchManga].
  WatchMangaProvider(
    this.id,
  ) : super.internal(
          (ref) => watchManga(
            ref,
            id,
          ),
          from: watchMangaProvider,
          name: r'watchMangaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchMangaHash,
          dependencies: WatchMangaFamily._dependencies,
          allTransitiveDependencies:
              WatchMangaFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is WatchMangaProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getMangaIdFromSourceHash() =>
    r'fb9f87b153e6c2927b048ae7d664df3037a09987';
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

String _$getChapterHash() => r'e014da0ed3e672bc5e3419a5cd7236455adb952c';
typedef GetChapterRef = AutoDisposeFutureProviderRef<Chapter?>;

/// See also [getChapter].
@ProviderFor(getChapter)
const getChapterProvider = GetChapterFamily();

/// See also [getChapter].
class GetChapterFamily extends Family<AsyncValue<Chapter?>> {
  /// See also [getChapter].
  const GetChapterFamily();

  /// See also [getChapter].
  GetChapterProvider call(
    int chapterId,
  ) {
    return GetChapterProvider(
      chapterId,
    );
  }

  @override
  GetChapterProvider getProviderOverride(
    covariant GetChapterProvider provider,
  ) {
    return call(
      provider.chapterId,
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
  String? get name => r'getChapterProvider';
}

/// See also [getChapter].
class GetChapterProvider extends AutoDisposeFutureProvider<Chapter?> {
  /// See also [getChapter].
  GetChapterProvider(
    this.chapterId,
  ) : super.internal(
          (ref) => getChapter(
            ref,
            chapterId,
          ),
          from: getChapterProvider,
          name: r'getChapterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getChapterHash,
          dependencies: GetChapterFamily._dependencies,
          allTransitiveDependencies:
              GetChapterFamily._allTransitiveDependencies,
        );

  final int chapterId;

  @override
  bool operator ==(Object other) {
    return other is GetChapterProvider && other.chapterId == chapterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$watchChaptersForMangaHash() =>
    r'3b8b3b6a1bc7a876fd0904e9df8a48176dd0e716';
typedef WatchChaptersForMangaRef = StreamProviderRef<List<Chapter>>;

/// See also [watchChaptersForManga].
@ProviderFor(watchChaptersForManga)
const watchChaptersForMangaProvider = WatchChaptersForMangaFamily();

/// See also [watchChaptersForManga].
class WatchChaptersForMangaFamily extends Family<AsyncValue<List<Chapter>>> {
  /// See also [watchChaptersForManga].
  const WatchChaptersForMangaFamily();

  /// See also [watchChaptersForManga].
  WatchChaptersForMangaProvider call(
    int mangaId,
  ) {
    return WatchChaptersForMangaProvider(
      mangaId,
    );
  }

  @override
  WatchChaptersForMangaProvider getProviderOverride(
    covariant WatchChaptersForMangaProvider provider,
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
  String? get name => r'watchChaptersForMangaProvider';
}

/// See also [watchChaptersForManga].
class WatchChaptersForMangaProvider extends StreamProvider<List<Chapter>> {
  /// See also [watchChaptersForManga].
  WatchChaptersForMangaProvider(
    this.mangaId,
  ) : super.internal(
          (ref) => watchChaptersForManga(
            ref,
            mangaId,
          ),
          from: watchChaptersForMangaProvider,
          name: r'watchChaptersForMangaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchChaptersForMangaHash,
          dependencies: WatchChaptersForMangaFamily._dependencies,
          allTransitiveDependencies:
              WatchChaptersForMangaFamily._allTransitiveDependencies,
        );

  final int mangaId;

  @override
  bool operator ==(Object other) {
    return other is WatchChaptersForMangaProvider && other.mangaId == mangaId;
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
