// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatasourceHash() => r'f403c6a17f6977c8109bf9a712e8b874a486b232';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WatchMangasInLibraryRef = StreamProviderRef<List<Manga>>;
String _$watchMangaByIdHash() => r'ce88fa362f09e9fd18921d3d0622480be0ef9c64';

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

/// See also [watchMangaById].
@ProviderFor(watchMangaById)
const watchMangaByIdProvider = WatchMangaByIdFamily();

/// See also [watchMangaById].
class WatchMangaByIdFamily extends Family<AsyncValue<Manga>> {
  /// See also [watchMangaById].
  const WatchMangaByIdFamily();

  /// See also [watchMangaById].
  WatchMangaByIdProvider call(
    int id,
  ) {
    return WatchMangaByIdProvider(
      id,
    );
  }

  @override
  WatchMangaByIdProvider getProviderOverride(
    covariant WatchMangaByIdProvider provider,
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
  String? get name => r'watchMangaByIdProvider';
}

/// See also [watchMangaById].
class WatchMangaByIdProvider extends AutoDisposeStreamProvider<Manga> {
  /// See also [watchMangaById].
  WatchMangaByIdProvider(
    int id,
  ) : this._internal(
          (ref) => watchMangaById(
            ref as WatchMangaByIdRef,
            id,
          ),
          from: watchMangaByIdProvider,
          name: r'watchMangaByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchMangaByIdHash,
          dependencies: WatchMangaByIdFamily._dependencies,
          allTransitiveDependencies:
              WatchMangaByIdFamily._allTransitiveDependencies,
          id: id,
        );

  WatchMangaByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    Stream<Manga> Function(WatchMangaByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchMangaByIdProvider._internal(
        (ref) => create(ref as WatchMangaByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Manga> createElement() {
    return _WatchMangaByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchMangaByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchMangaByIdRef on AutoDisposeStreamProviderRef<Manga> {
  /// The parameter `id` of this provider.
  int get id;
}

class _WatchMangaByIdProviderElement
    extends AutoDisposeStreamProviderElement<Manga> with WatchMangaByIdRef {
  _WatchMangaByIdProviderElement(super.provider);

  @override
  int get id => (origin as WatchMangaByIdProvider).id;
}

String _$getMangaByUrlAndSourceIdHash() =>
    r'72bdf3fda4e37634c6e1cae7be0f13ceecf30366';

/// See also [getMangaByUrlAndSourceId].
@ProviderFor(getMangaByUrlAndSourceId)
const getMangaByUrlAndSourceIdProvider = GetMangaByUrlAndSourceIdFamily();

/// See also [getMangaByUrlAndSourceId].
class GetMangaByUrlAndSourceIdFamily extends Family<AsyncValue<Manga?>> {
  /// See also [getMangaByUrlAndSourceId].
  const GetMangaByUrlAndSourceIdFamily();

  /// See also [getMangaByUrlAndSourceId].
  GetMangaByUrlAndSourceIdProvider call({
    required String url,
    required String sourceId,
  }) {
    return GetMangaByUrlAndSourceIdProvider(
      url: url,
      sourceId: sourceId,
    );
  }

  @override
  GetMangaByUrlAndSourceIdProvider getProviderOverride(
    covariant GetMangaByUrlAndSourceIdProvider provider,
  ) {
    return call(
      url: provider.url,
      sourceId: provider.sourceId,
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
  String? get name => r'getMangaByUrlAndSourceIdProvider';
}

/// See also [getMangaByUrlAndSourceId].
class GetMangaByUrlAndSourceIdProvider
    extends AutoDisposeFutureProvider<Manga?> {
  /// See also [getMangaByUrlAndSourceId].
  GetMangaByUrlAndSourceIdProvider({
    required String url,
    required String sourceId,
  }) : this._internal(
          (ref) => getMangaByUrlAndSourceId(
            ref as GetMangaByUrlAndSourceIdRef,
            url: url,
            sourceId: sourceId,
          ),
          from: getMangaByUrlAndSourceIdProvider,
          name: r'getMangaByUrlAndSourceIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMangaByUrlAndSourceIdHash,
          dependencies: GetMangaByUrlAndSourceIdFamily._dependencies,
          allTransitiveDependencies:
              GetMangaByUrlAndSourceIdFamily._allTransitiveDependencies,
          url: url,
          sourceId: sourceId,
        );

  GetMangaByUrlAndSourceIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
    required this.sourceId,
  }) : super.internal();

  final String url;
  final String sourceId;

  @override
  Override overrideWith(
    FutureOr<Manga?> Function(GetMangaByUrlAndSourceIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMangaByUrlAndSourceIdProvider._internal(
        (ref) => create(ref as GetMangaByUrlAndSourceIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
        sourceId: sourceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Manga?> createElement() {
    return _GetMangaByUrlAndSourceIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMangaByUrlAndSourceIdProvider &&
        other.url == url &&
        other.sourceId == sourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);
    hash = _SystemHash.combine(hash, sourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMangaByUrlAndSourceIdRef on AutoDisposeFutureProviderRef<Manga?> {
  /// The parameter `url` of this provider.
  String get url;

  /// The parameter `sourceId` of this provider.
  String get sourceId;
}

class _GetMangaByUrlAndSourceIdProviderElement
    extends AutoDisposeFutureProviderElement<Manga?>
    with GetMangaByUrlAndSourceIdRef {
  _GetMangaByUrlAndSourceIdProviderElement(super.provider);

  @override
  String get url => (origin as GetMangaByUrlAndSourceIdProvider).url;
  @override
  String get sourceId => (origin as GetMangaByUrlAndSourceIdProvider).sourceId;
}

String _$getChapterHash() => r'4672c29091fa9608cd2cc9428f0ce51b341000c4';

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
    int chapterId,
  ) : this._internal(
          (ref) => getChapter(
            ref as GetChapterRef,
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
          chapterId: chapterId,
        );

  GetChapterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.chapterId,
  }) : super.internal();

  final int chapterId;

  @override
  Override overrideWith(
    FutureOr<Chapter?> Function(GetChapterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetChapterProvider._internal(
        (ref) => create(ref as GetChapterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        chapterId: chapterId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Chapter?> createElement() {
    return _GetChapterProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetChapterRef on AutoDisposeFutureProviderRef<Chapter?> {
  /// The parameter `chapterId` of this provider.
  int get chapterId;
}

class _GetChapterProviderElement
    extends AutoDisposeFutureProviderElement<Chapter?> with GetChapterRef {
  _GetChapterProviderElement(super.provider);

  @override
  int get chapterId => (origin as GetChapterProvider).chapterId;
}

String _$watchChaptersForMangaHash() =>
    r'7ca21d7a80527ec656ab38d30e2fbf58962bd766';

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
    int mangaId,
  ) : this._internal(
          (ref) => watchChaptersForManga(
            ref as WatchChaptersForMangaRef,
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
          mangaId: mangaId,
        );

  WatchChaptersForMangaProvider._internal(
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
    Stream<List<Chapter>> Function(WatchChaptersForMangaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchChaptersForMangaProvider._internal(
        (ref) => create(ref as WatchChaptersForMangaRef),
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
  StreamProviderElement<List<Chapter>> createElement() {
    return _WatchChaptersForMangaProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchChaptersForMangaRef on StreamProviderRef<List<Chapter>> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _WatchChaptersForMangaProviderElement
    extends StreamProviderElement<List<Chapter>> with WatchChaptersForMangaRef {
  _WatchChaptersForMangaProviderElement(super.provider);

  @override
  int get mangaId => (origin as WatchChaptersForMangaProvider).mangaId;
}

String _$watchUnreadChaptersCountForMangaHash() =>
    r'54c2aee35357a308697f52f76c7a2f826513a101';

/// See also [watchUnreadChaptersCountForManga].
@ProviderFor(watchUnreadChaptersCountForManga)
const watchUnreadChaptersCountForMangaProvider =
    WatchUnreadChaptersCountForMangaFamily();

/// See also [watchUnreadChaptersCountForManga].
class WatchUnreadChaptersCountForMangaFamily extends Family<AsyncValue<int>> {
  /// See also [watchUnreadChaptersCountForManga].
  const WatchUnreadChaptersCountForMangaFamily();

  /// See also [watchUnreadChaptersCountForManga].
  WatchUnreadChaptersCountForMangaProvider call(
    int mangaId,
  ) {
    return WatchUnreadChaptersCountForMangaProvider(
      mangaId,
    );
  }

  @override
  WatchUnreadChaptersCountForMangaProvider getProviderOverride(
    covariant WatchUnreadChaptersCountForMangaProvider provider,
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
  String? get name => r'watchUnreadChaptersCountForMangaProvider';
}

/// See also [watchUnreadChaptersCountForManga].
class WatchUnreadChaptersCountForMangaProvider
    extends AutoDisposeStreamProvider<int> {
  /// See also [watchUnreadChaptersCountForManga].
  WatchUnreadChaptersCountForMangaProvider(
    int mangaId,
  ) : this._internal(
          (ref) => watchUnreadChaptersCountForManga(
            ref as WatchUnreadChaptersCountForMangaRef,
            mangaId,
          ),
          from: watchUnreadChaptersCountForMangaProvider,
          name: r'watchUnreadChaptersCountForMangaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchUnreadChaptersCountForMangaHash,
          dependencies: WatchUnreadChaptersCountForMangaFamily._dependencies,
          allTransitiveDependencies:
              WatchUnreadChaptersCountForMangaFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  WatchUnreadChaptersCountForMangaProvider._internal(
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
    Stream<int> Function(WatchUnreadChaptersCountForMangaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchUnreadChaptersCountForMangaProvider._internal(
        (ref) => create(ref as WatchUnreadChaptersCountForMangaRef),
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
  AutoDisposeStreamProviderElement<int> createElement() {
    return _WatchUnreadChaptersCountForMangaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchUnreadChaptersCountForMangaProvider &&
        other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchUnreadChaptersCountForMangaRef on AutoDisposeStreamProviderRef<int> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _WatchUnreadChaptersCountForMangaProviderElement
    extends AutoDisposeStreamProviderElement<int>
    with WatchUnreadChaptersCountForMangaRef {
  _WatchUnreadChaptersCountForMangaProviderElement(super.provider);

  @override
  int get mangaId =>
      (origin as WatchUnreadChaptersCountForMangaProvider).mangaId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
