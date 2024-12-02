// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_direction_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$watchReadingDirectionHash() =>
    r'14be4a07498644d3925f6ddea3ec581974d53a8d';

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

/// See also [watchReadingDirection].
@ProviderFor(watchReadingDirection)
const watchReadingDirectionProvider = WatchReadingDirectionFamily();

/// See also [watchReadingDirection].
class WatchReadingDirectionFamily extends Family<AsyncValue<ReadingDirection>> {
  /// See also [watchReadingDirection].
  const WatchReadingDirectionFamily();

  /// See also [watchReadingDirection].
  WatchReadingDirectionProvider call(
    int mangaId,
  ) {
    return WatchReadingDirectionProvider(
      mangaId,
    );
  }

  @override
  WatchReadingDirectionProvider getProviderOverride(
    covariant WatchReadingDirectionProvider provider,
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
  String? get name => r'watchReadingDirectionProvider';
}

/// See also [watchReadingDirection].
class WatchReadingDirectionProvider
    extends AutoDisposeStreamProvider<ReadingDirection> {
  /// See also [watchReadingDirection].
  WatchReadingDirectionProvider(
    int mangaId,
  ) : this._internal(
          (ref) => watchReadingDirection(
            ref as WatchReadingDirectionRef,
            mangaId,
          ),
          from: watchReadingDirectionProvider,
          name: r'watchReadingDirectionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchReadingDirectionHash,
          dependencies: WatchReadingDirectionFamily._dependencies,
          allTransitiveDependencies:
              WatchReadingDirectionFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  WatchReadingDirectionProvider._internal(
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
    Stream<ReadingDirection> Function(WatchReadingDirectionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchReadingDirectionProvider._internal(
        (ref) => create(ref as WatchReadingDirectionRef),
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
  AutoDisposeStreamProviderElement<ReadingDirection> createElement() {
    return _WatchReadingDirectionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchReadingDirectionProvider && other.mangaId == mangaId;
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
mixin WatchReadingDirectionRef
    on AutoDisposeStreamProviderRef<ReadingDirection> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _WatchReadingDirectionProviderElement
    extends AutoDisposeStreamProviderElement<ReadingDirection>
    with WatchReadingDirectionRef {
  _WatchReadingDirectionProviderElement(super.provider);

  @override
  int get mangaId => (origin as WatchReadingDirectionProvider).mangaId;
}

String _$readingDirectionControllerHash() =>
    r'448f5eaeecaf6ec57bd4985df66c951d3e37f122';

abstract class _$ReadingDirectionController
    extends BuildlessAutoDisposeNotifier<AsyncValue<ReadingDirection>> {
  late final int mangaId;

  AsyncValue<ReadingDirection> build(
    int mangaId,
  );
}

/// See also [ReadingDirectionController].
@ProviderFor(ReadingDirectionController)
const readingDirectionControllerProvider = ReadingDirectionControllerFamily();

/// See also [ReadingDirectionController].
class ReadingDirectionControllerFamily
    extends Family<AsyncValue<ReadingDirection>> {
  /// See also [ReadingDirectionController].
  const ReadingDirectionControllerFamily();

  /// See also [ReadingDirectionController].
  ReadingDirectionControllerProvider call(
    int mangaId,
  ) {
    return ReadingDirectionControllerProvider(
      mangaId,
    );
  }

  @override
  ReadingDirectionControllerProvider getProviderOverride(
    covariant ReadingDirectionControllerProvider provider,
  ) {
    return call(
      provider.mangaId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    watchReadingDirectionProvider,
    localDatasourceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    watchReadingDirectionProvider,
    ...?watchReadingDirectionProvider.allTransitiveDependencies,
    localDatasourceProvider,
    ...?localDatasourceProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'readingDirectionControllerProvider';
}

/// See also [ReadingDirectionController].
class ReadingDirectionControllerProvider
    extends AutoDisposeNotifierProviderImpl<ReadingDirectionController,
        AsyncValue<ReadingDirection>> {
  /// See also [ReadingDirectionController].
  ReadingDirectionControllerProvider(
    int mangaId,
  ) : this._internal(
          () => ReadingDirectionController()..mangaId = mangaId,
          from: readingDirectionControllerProvider,
          name: r'readingDirectionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$readingDirectionControllerHash,
          dependencies: ReadingDirectionControllerFamily._dependencies,
          allTransitiveDependencies:
              ReadingDirectionControllerFamily._allTransitiveDependencies,
          mangaId: mangaId,
        );

  ReadingDirectionControllerProvider._internal(
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
  AsyncValue<ReadingDirection> runNotifierBuild(
    covariant ReadingDirectionController notifier,
  ) {
    return notifier.build(
      mangaId,
    );
  }

  @override
  Override overrideWith(ReadingDirectionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReadingDirectionControllerProvider._internal(
        () => create()..mangaId = mangaId,
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
  AutoDisposeNotifierProviderElement<ReadingDirectionController,
      AsyncValue<ReadingDirection>> createElement() {
    return _ReadingDirectionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReadingDirectionControllerProvider &&
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
mixin ReadingDirectionControllerRef
    on AutoDisposeNotifierProviderRef<AsyncValue<ReadingDirection>> {
  /// The parameter `mangaId` of this provider.
  int get mangaId;
}

class _ReadingDirectionControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ReadingDirectionController,
        AsyncValue<ReadingDirection>> with ReadingDirectionControllerRef {
  _ReadingDirectionControllerProviderElement(super.provider);

  @override
  int get mangaId => (origin as ReadingDirectionControllerProvider).mangaId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
