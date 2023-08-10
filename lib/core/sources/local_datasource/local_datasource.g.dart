// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatasourceHash() => r'0987826b9fa0c06880a8eb900a84eae68c413521';

/// See also [localDatasource].
@ProviderFor(localDatasource)
final localDatasourceProvider = Provider<LocalDatasource>.internal(
  localDatasource,
  name: r'localDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localDatasourceHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef LocalDatasourceRef = ProviderRef<LocalDatasource>;
String _$watchMangasInLibraryHash() =>
    r'7609a9322afb2e2910b2ee3edbec1ceac84bc34e';

/// See also [watchMangasInLibrary].
@ProviderFor(watchMangasInLibrary)
final watchMangasInLibraryProvider = StreamProvider<List<Manga>>.internal(
  watchMangasInLibrary,
  name: r'watchMangasInLibraryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchMangasInLibraryHash,
  dependencies: <ProviderOrFamily>[localDatasourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    localDatasourceProvider,
    ...?localDatasourceProvider.allTransitiveDependencies
  },
);

typedef WatchMangasInLibraryRef = StreamProviderRef<List<Manga>>;
String _$watchMangaHash() => r'9b59ee664e348ac46a82ba7ab7051fce57e11bc5';

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
    r'2b7787864eac6bb632ede963b021c0045ec1fae1';
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

String _$getChapterHash() => r'4672c29091fa9608cd2cc9428f0ce51b341000c4';
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
    r'7ca21d7a80527ec656ab38d30e2fbf58962bd766';
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
