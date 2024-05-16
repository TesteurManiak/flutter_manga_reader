// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scopedMangaDatasourceHash() =>
    r'5eeea64a6292d207248d6e9d67ef191942e25fe4';

/// See also [scopedMangaDatasource].
@ProviderFor(scopedMangaDatasource)
final scopedMangaDatasourceProvider =
    AutoDisposeProvider<MangaDatasource>.internal(
  scopedMangaDatasource,
  name: r'scopedMangaDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scopedMangaDatasourceHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef ScopedMangaDatasourceRef = AutoDisposeProviderRef<MangaDatasource>;
String _$fetchChapterPagesHash() => r'107df8ce05c5f4e05b5a580ff7320d156cb6a0f1';

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

/// See also [fetchChapterPages].
@ProviderFor(fetchChapterPages)
const fetchChapterPagesProvider = FetchChapterPagesFamily();

/// See also [fetchChapterPages].
class FetchChapterPagesFamily
    extends Family<AsyncValue<Result<List<ChapterPage>, HttpError>>> {
  /// See also [fetchChapterPages].
  const FetchChapterPagesFamily();

  /// See also [fetchChapterPages].
  FetchChapterPagesProvider call(
    SourceChapter sourceChapter,
  ) {
    return FetchChapterPagesProvider(
      sourceChapter,
    );
  }

  @override
  FetchChapterPagesProvider getProviderOverride(
    covariant FetchChapterPagesProvider provider,
  ) {
    return call(
      provider.sourceChapter,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    scopedMangaDatasourceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    scopedMangaDatasourceProvider,
    ...?scopedMangaDatasourceProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchChapterPagesProvider';
}

/// See also [fetchChapterPages].
class FetchChapterPagesProvider
    extends AutoDisposeFutureProvider<Result<List<ChapterPage>, HttpError>> {
  /// See also [fetchChapterPages].
  FetchChapterPagesProvider(
    SourceChapter sourceChapter,
  ) : this._internal(
          (ref) => fetchChapterPages(
            ref as FetchChapterPagesRef,
            sourceChapter,
          ),
          from: fetchChapterPagesProvider,
          name: r'fetchChapterPagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchChapterPagesHash,
          dependencies: FetchChapterPagesFamily._dependencies,
          allTransitiveDependencies:
              FetchChapterPagesFamily._allTransitiveDependencies,
          sourceChapter: sourceChapter,
        );

  FetchChapterPagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sourceChapter,
  }) : super.internal();

  final SourceChapter sourceChapter;

  @override
  Override overrideWith(
    FutureOr<Result<List<ChapterPage>, HttpError>> Function(
            FetchChapterPagesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchChapterPagesProvider._internal(
        (ref) => create(ref as FetchChapterPagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sourceChapter: sourceChapter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Result<List<ChapterPage>, HttpError>>
      createElement() {
    return _FetchChapterPagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchChapterPagesProvider &&
        other.sourceChapter == sourceChapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceChapter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchChapterPagesRef
    on AutoDisposeFutureProviderRef<Result<List<ChapterPage>, HttpError>> {
  /// The parameter `sourceChapter` of this provider.
  SourceChapter get sourceChapter;
}

class _FetchChapterPagesProviderElement
    extends AutoDisposeFutureProviderElement<
        Result<List<ChapterPage>, HttpError>> with FetchChapterPagesRef {
  _FetchChapterPagesProviderElement(super.provider);

  @override
  SourceChapter get sourceChapter =>
      (origin as FetchChapterPagesProvider).sourceChapter;
}

String _$mangaDatasourcesHash() => r'd4d11d6722447d11dfafabc15d5af6de86fdd98c';

/// See also [mangaDatasources].
@ProviderFor(mangaDatasources)
final mangaDatasourcesProvider =
    AutoDisposeProvider<Map<String, MangaDatasource>>.internal(
  mangaDatasources,
  name: r'mangaDatasourcesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mangaDatasourcesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MangaDatasourcesRef
    = AutoDisposeProviderRef<Map<String, MangaDatasource>>;
String _$findSourceFromIdHash() => r'55038b8b7acd106e3f84123fe84421ab5c021c23';

/// See also [findSourceFromId].
@ProviderFor(findSourceFromId)
const findSourceFromIdProvider = FindSourceFromIdFamily();

/// See also [findSourceFromId].
class FindSourceFromIdFamily extends Family<MangaDatasource?> {
  /// See also [findSourceFromId].
  const FindSourceFromIdFamily();

  /// See also [findSourceFromId].
  FindSourceFromIdProvider call(
    String sourceId,
  ) {
    return FindSourceFromIdProvider(
      sourceId,
    );
  }

  @override
  FindSourceFromIdProvider getProviderOverride(
    covariant FindSourceFromIdProvider provider,
  ) {
    return call(
      provider.sourceId,
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
  String? get name => r'findSourceFromIdProvider';
}

/// See also [findSourceFromId].
class FindSourceFromIdProvider extends AutoDisposeProvider<MangaDatasource?> {
  /// See also [findSourceFromId].
  FindSourceFromIdProvider(
    String sourceId,
  ) : this._internal(
          (ref) => findSourceFromId(
            ref as FindSourceFromIdRef,
            sourceId,
          ),
          from: findSourceFromIdProvider,
          name: r'findSourceFromIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$findSourceFromIdHash,
          dependencies: FindSourceFromIdFamily._dependencies,
          allTransitiveDependencies:
              FindSourceFromIdFamily._allTransitiveDependencies,
          sourceId: sourceId,
        );

  FindSourceFromIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sourceId,
  }) : super.internal();

  final String sourceId;

  @override
  Override overrideWith(
    MangaDatasource? Function(FindSourceFromIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FindSourceFromIdProvider._internal(
        (ref) => create(ref as FindSourceFromIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sourceId: sourceId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MangaDatasource?> createElement() {
    return _FindSourceFromIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FindSourceFromIdProvider && other.sourceId == sourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FindSourceFromIdRef on AutoDisposeProviderRef<MangaDatasource?> {
  /// The parameter `sourceId` of this provider.
  String get sourceId;
}

class _FindSourceFromIdProviderElement
    extends AutoDisposeProviderElement<MangaDatasource?>
    with FindSourceFromIdRef {
  _FindSourceFromIdProviderElement(super.provider);

  @override
  String get sourceId => (origin as FindSourceFromIdProvider).sourceId;
}

String _$getSourceFromIdHash() => r'f2ff5fde03cf67c003233a7b21a545daebd25ef1';

/// See also [getSourceFromId].
@ProviderFor(getSourceFromId)
const getSourceFromIdProvider = GetSourceFromIdFamily();

/// See also [getSourceFromId].
class GetSourceFromIdFamily extends Family<MangaDatasource> {
  /// See also [getSourceFromId].
  const GetSourceFromIdFamily();

  /// See also [getSourceFromId].
  GetSourceFromIdProvider call(
    String sourceId,
  ) {
    return GetSourceFromIdProvider(
      sourceId,
    );
  }

  @override
  GetSourceFromIdProvider getProviderOverride(
    covariant GetSourceFromIdProvider provider,
  ) {
    return call(
      provider.sourceId,
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
  String? get name => r'getSourceFromIdProvider';
}

/// See also [getSourceFromId].
class GetSourceFromIdProvider extends AutoDisposeProvider<MangaDatasource> {
  /// See also [getSourceFromId].
  GetSourceFromIdProvider(
    String sourceId,
  ) : this._internal(
          (ref) => getSourceFromId(
            ref as GetSourceFromIdRef,
            sourceId,
          ),
          from: getSourceFromIdProvider,
          name: r'getSourceFromIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSourceFromIdHash,
          dependencies: GetSourceFromIdFamily._dependencies,
          allTransitiveDependencies:
              GetSourceFromIdFamily._allTransitiveDependencies,
          sourceId: sourceId,
        );

  GetSourceFromIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sourceId,
  }) : super.internal();

  final String sourceId;

  @override
  Override overrideWith(
    MangaDatasource Function(GetSourceFromIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSourceFromIdProvider._internal(
        (ref) => create(ref as GetSourceFromIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sourceId: sourceId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MangaDatasource> createElement() {
    return _GetSourceFromIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSourceFromIdProvider && other.sourceId == sourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSourceFromIdRef on AutoDisposeProviderRef<MangaDatasource> {
  /// The parameter `sourceId` of this provider.
  String get sourceId;
}

class _GetSourceFromIdProviderElement
    extends AutoDisposeProviderElement<MangaDatasource>
    with GetSourceFromIdRef {
  _GetSourceFromIdProviderElement(super.provider);

  @override
  String get sourceId => (origin as GetSourceFromIdProvider).sourceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
