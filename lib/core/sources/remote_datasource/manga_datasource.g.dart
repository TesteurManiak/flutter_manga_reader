// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mangaDatasourceHash() => r'4240c992e98a36379c464aff902bff0c95178832';

/// See also [mangaDatasource].
@ProviderFor(mangaDatasource)
final mangaDatasourceProvider = AutoDisposeProvider<MangaDatasource>.internal(
  mangaDatasource,
  name: r'mangaDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mangaDatasourceHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef MangaDatasourceRef = AutoDisposeProviderRef<MangaDatasource>;
String _$fetchChapterPagesHash() => r'59680b1872de0d206467553f43ebec609fe46244';

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
    mangaDatasourceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    mangaDatasourceProvider,
    ...?mangaDatasourceProvider.allTransitiveDependencies
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

String _$mangaDatasourcesHash() => r'576fd17eb850fd3c37a85721671e86de58fcc3d8';

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
String _$getSourceFromIdHash() => r'0704196c0d899ecec4f2e8dd9d5168339fbc2390';

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

String _$getSourceIdHash() => r'9a005ef6d48ce920fb314bdcbb5e57bbb93f711e';

/// See also [getSourceId].
@ProviderFor(getSourceId)
const getSourceIdProvider = GetSourceIdFamily();

/// See also [getSourceId].
class GetSourceIdFamily extends Family<String> {
  /// See also [getSourceId].
  const GetSourceIdFamily();

  /// See also [getSourceId].
  GetSourceIdProvider call(
    SourceManga sourceManga,
  ) {
    return GetSourceIdProvider(
      sourceManga,
    );
  }

  @override
  GetSourceIdProvider getProviderOverride(
    covariant GetSourceIdProvider provider,
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
  String? get name => r'getSourceIdProvider';
}

/// See also [getSourceId].
class GetSourceIdProvider extends AutoDisposeProvider<String> {
  /// See also [getSourceId].
  GetSourceIdProvider(
    SourceManga sourceManga,
  ) : this._internal(
          (ref) => getSourceId(
            ref as GetSourceIdRef,
            sourceManga,
          ),
          from: getSourceIdProvider,
          name: r'getSourceIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSourceIdHash,
          dependencies: GetSourceIdFamily._dependencies,
          allTransitiveDependencies:
              GetSourceIdFamily._allTransitiveDependencies,
          sourceManga: sourceManga,
        );

  GetSourceIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sourceManga,
  }) : super.internal();

  final SourceManga sourceManga;

  @override
  Override overrideWith(
    String Function(GetSourceIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSourceIdProvider._internal(
        (ref) => create(ref as GetSourceIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sourceManga: sourceManga,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _GetSourceIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSourceIdProvider && other.sourceManga == sourceManga;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sourceManga.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSourceIdRef on AutoDisposeProviderRef<String> {
  /// The parameter `sourceManga` of this provider.
  SourceManga get sourceManga;
}

class _GetSourceIdProviderElement extends AutoDisposeProviderElement<String>
    with GetSourceIdRef {
  _GetSourceIdProviderElement(super.provider);

  @override
  SourceManga get sourceManga => (origin as GetSourceIdProvider).sourceManga;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
