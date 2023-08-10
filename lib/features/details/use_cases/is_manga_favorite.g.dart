// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_manga_favorite.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isMangaFavoriteHash() => r'bd1e3acd5d9ef1874f14a6178ccbaecf49048b6a';

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

typedef IsMangaFavoriteRef = AutoDisposeProviderRef<bool>;

/// See also [isMangaFavorite].
@ProviderFor(isMangaFavorite)
const isMangaFavoriteProvider = IsMangaFavoriteFamily();

/// See also [isMangaFavorite].
class IsMangaFavoriteFamily extends Family<bool> {
  /// See also [isMangaFavorite].
  const IsMangaFavoriteFamily();

  /// See also [isMangaFavorite].
  IsMangaFavoriteProvider call(
    int mangaId,
  ) {
    return IsMangaFavoriteProvider(
      mangaId,
    );
  }

  @override
  IsMangaFavoriteProvider getProviderOverride(
    covariant IsMangaFavoriteProvider provider,
  ) {
    return call(
      provider.mangaId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    watchMangasInLibraryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    watchMangasInLibraryProvider,
    ...?watchMangasInLibraryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isMangaFavoriteProvider';
}

/// See also [isMangaFavorite].
class IsMangaFavoriteProvider extends AutoDisposeProvider<bool> {
  /// See also [isMangaFavorite].
  IsMangaFavoriteProvider(
    this.mangaId,
  ) : super.internal(
          (ref) => isMangaFavorite(
            ref,
            mangaId,
          ),
          from: isMangaFavoriteProvider,
          name: r'isMangaFavoriteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isMangaFavoriteHash,
          dependencies: IsMangaFavoriteFamily._dependencies,
          allTransitiveDependencies:
              IsMangaFavoriteFamily._allTransitiveDependencies,
        );

  final int mangaId;

  @override
  bool operator ==(Object other) {
    return other is IsMangaFavoriteProvider && other.mangaId == mangaId;
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
