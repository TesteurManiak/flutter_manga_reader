// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$libraryControllerHash() => r'589205c83a0ba9eecd74fa3f7405c45ac0130b99';

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
