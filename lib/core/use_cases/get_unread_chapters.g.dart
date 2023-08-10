// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_unread_chapters.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUnreadChaptersHash() => r'e75825ba5b6c6cd99f9be232fb41ad9b983a1577';

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

typedef GetUnreadChaptersRef = AutoDisposeProviderRef<int?>;

/// See also [getUnreadChapters].
@ProviderFor(getUnreadChapters)
const getUnreadChaptersProvider = GetUnreadChaptersFamily();

/// See also [getUnreadChapters].
class GetUnreadChaptersFamily extends Family<int?> {
  /// See also [getUnreadChapters].
  const GetUnreadChaptersFamily();

  /// See also [getUnreadChapters].
  GetUnreadChaptersProvider call(
    SourceManga sourceManga,
  ) {
    return GetUnreadChaptersProvider(
      sourceManga,
    );
  }

  @override
  GetUnreadChaptersProvider getProviderOverride(
    covariant GetUnreadChaptersProvider provider,
  ) {
    return call(
      provider.sourceManga,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    getMangaIdFromSourceProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    getMangaIdFromSourceProvider,
    ...?getMangaIdFromSourceProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUnreadChaptersProvider';
}

/// See also [getUnreadChapters].
class GetUnreadChaptersProvider extends AutoDisposeProvider<int?> {
  /// See also [getUnreadChapters].
  GetUnreadChaptersProvider(
    this.sourceManga,
  ) : super.internal(
          (ref) => getUnreadChapters(
            ref,
            sourceManga,
          ),
          from: getUnreadChaptersProvider,
          name: r'getUnreadChaptersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUnreadChaptersHash,
          dependencies: GetUnreadChaptersFamily._dependencies,
          allTransitiveDependencies:
              GetUnreadChaptersFamily._allTransitiveDependencies,
        );

  final SourceManga sourceManga;

  @override
  bool operator ==(Object other) {
    return other is GetUnreadChaptersProvider &&
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
