// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_manga_in_library.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isMangaInLibraryHash() => r'ade7f27715effb7c756267c030ec50f63b046ba3';

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

typedef IsMangaInLibraryRef = AutoDisposeProviderRef<bool>;

/// See also [isMangaInLibrary].
@ProviderFor(isMangaInLibrary)
const isMangaInLibraryProvider = IsMangaInLibraryFamily();

/// See also [isMangaInLibrary].
class IsMangaInLibraryFamily extends Family<bool> {
  /// See also [isMangaInLibrary].
  const IsMangaInLibraryFamily();

  /// See also [isMangaInLibrary].
  IsMangaInLibraryProvider call(
    SourceManga sourceManga,
  ) {
    return IsMangaInLibraryProvider(
      sourceManga,
    );
  }

  @override
  IsMangaInLibraryProvider getProviderOverride(
    covariant IsMangaInLibraryProvider provider,
  ) {
    return call(
      provider.sourceManga,
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
  String? get name => r'isMangaInLibraryProvider';
}

/// See also [isMangaInLibrary].
class IsMangaInLibraryProvider extends AutoDisposeProvider<bool> {
  /// See also [isMangaInLibrary].
  IsMangaInLibraryProvider(
    this.sourceManga,
  ) : super.internal(
          (ref) => isMangaInLibrary(
            ref,
            sourceManga,
          ),
          from: isMangaInLibraryProvider,
          name: r'isMangaInLibraryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isMangaInLibraryHash,
          dependencies: IsMangaInLibraryFamily._dependencies,
          allTransitiveDependencies:
              IsMangaInLibraryFamily._allTransitiveDependencies,
        );

  final SourceManga sourceManga;

  @override
  bool operator ==(Object other) {
    return other is IsMangaInLibraryProvider &&
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
