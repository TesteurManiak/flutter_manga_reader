// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$libraryControllerHash() => r'f5b5f78c0370fa7bf55780c9f895b7ff46172203';

/// See also [LibraryController].
@ProviderFor(LibraryController)
final libraryControllerProvider =
    AutoDisposeNotifierProvider<LibraryController, LibraryState>.internal(
  LibraryController.new,
  name: r'libraryControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$libraryControllerHash,
  dependencies: <ProviderOrFamily>[
    watchMangasInLibraryProvider,
    localDatasourceProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    watchMangasInLibraryProvider,
    ...?watchMangasInLibraryProvider.allTransitiveDependencies,
    localDatasourceProvider,
    ...?localDatasourceProvider.allTransitiveDependencies
  },
);

typedef _$LibraryController = AutoDisposeNotifier<LibraryState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
