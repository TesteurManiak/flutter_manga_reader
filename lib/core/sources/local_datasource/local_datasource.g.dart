// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatasourceHash() => r'3fc9a93f9e3999c336e790f8338a6f15134f4003';

/// See also [localDatasource].
@ProviderFor(localDatasource)
final localDatasourceProvider = Provider<LocalDatasource>.internal(
  localDatasource,
  name: r'localDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalDatasourceRef = ProviderRef<LocalDatasource>;
String _$watchMangasInLibraryHash() =>
    r'76e7db8f2ea22cb4edf3ab8af1269c17fab63267';

/// See also [watchMangasInLibrary].
@ProviderFor(watchMangasInLibrary)
final watchMangasInLibraryProvider =
    AutoDisposeStreamProvider<List<Manga>>.internal(
  watchMangasInLibrary,
  name: r'watchMangasInLibraryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchMangasInLibraryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WatchMangasInLibraryRef = AutoDisposeStreamProviderRef<List<Manga>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
