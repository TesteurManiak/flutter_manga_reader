// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scopedMangaDatasourceHash() =>
    r'9b55811c3fd5896e2b064bb052c3ac57d8859c05';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ScopedMangaDatasourceRef = AutoDisposeProviderRef<MangaDatasource>;
String _$fetchChapterPagesHash() => r'e123edd7170491b2ea0253dc0e61042444135dea';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$mangaDatasourcesHash() => r'1d91e24d4ecaa88ec3542d512033cb4d8ae3259b';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MangaDatasourcesRef
    = AutoDisposeProviderRef<Map<String, MangaDatasource>>;
String _$findSourceFromIdHash() => r'b28730c5f5798059ae284a3bab819d202b96316e';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$getSourceFromIdHash() => r'588ab5be332882bc90d9cac3c2e6e4b64156ab32';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
