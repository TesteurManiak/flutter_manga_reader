// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_manga_from_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMangaFromIdHash() => r'16e96d0c71783cbffc4f38dc71e8ce5e4f5bff40';

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

typedef GetMangaFromIdRef = AutoDisposeFutureProviderRef<Manga?>;

/// See also [getMangaFromId].
@ProviderFor(getMangaFromId)
const getMangaFromIdProvider = GetMangaFromIdFamily();

/// See also [getMangaFromId].
class GetMangaFromIdFamily extends Family<AsyncValue<Manga?>> {
  /// See also [getMangaFromId].
  const GetMangaFromIdFamily();

  /// See also [getMangaFromId].
  GetMangaFromIdProvider call(
    int id,
  ) {
    return GetMangaFromIdProvider(
      id,
    );
  }

  @override
  GetMangaFromIdProvider getProviderOverride(
    covariant GetMangaFromIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getMangaFromIdProvider';
}

/// See also [getMangaFromId].
class GetMangaFromIdProvider extends AutoDisposeFutureProvider<Manga?> {
  /// See also [getMangaFromId].
  GetMangaFromIdProvider(
    this.id,
  ) : super.internal(
          (ref) => getMangaFromId(
            ref,
            id,
          ),
          from: getMangaFromIdProvider,
          name: r'getMangaFromIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMangaFromIdHash,
          dependencies: GetMangaFromIdFamily._dependencies,
          allTransitiveDependencies:
              GetMangaFromIdFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GetMangaFromIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
