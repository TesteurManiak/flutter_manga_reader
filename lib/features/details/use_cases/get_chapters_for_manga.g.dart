// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chapters_for_manga.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getChaptersForMangaHash() =>
    r'23a4d160c3c8ed971c4325791388bd7b2b44c1fe';

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

typedef GetChaptersForMangaRef = AutoDisposeFutureProviderRef<List<Chapter>>;

/// See also [getChaptersForManga].
@ProviderFor(getChaptersForManga)
const getChaptersForMangaProvider = GetChaptersForMangaFamily();

/// See also [getChaptersForManga].
class GetChaptersForMangaFamily extends Family<AsyncValue<List<Chapter>>> {
  /// See also [getChaptersForManga].
  const GetChaptersForMangaFamily();

  /// See also [getChaptersForManga].
  GetChaptersForMangaProvider call(
    int mangaId,
  ) {
    return GetChaptersForMangaProvider(
      mangaId,
    );
  }

  @override
  GetChaptersForMangaProvider getProviderOverride(
    covariant GetChaptersForMangaProvider provider,
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
  String? get name => r'getChaptersForMangaProvider';
}

/// See also [getChaptersForManga].
class GetChaptersForMangaProvider
    extends AutoDisposeFutureProvider<List<Chapter>> {
  /// See also [getChaptersForManga].
  GetChaptersForMangaProvider(
    this.mangaId,
  ) : super.internal(
          (ref) => getChaptersForManga(
            ref,
            mangaId,
          ),
          from: getChaptersForMangaProvider,
          name: r'getChaptersForMangaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getChaptersForMangaHash,
          dependencies: GetChaptersForMangaFamily._dependencies,
          allTransitiveDependencies:
              GetChaptersForMangaFamily._allTransitiveDependencies,
        );

  final int mangaId;

  @override
  bool operator ==(Object other) {
    return other is GetChaptersForMangaProvider && other.mangaId == mangaId;
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
