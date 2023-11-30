// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$libraryControllerHash() => r'9f66a489bf03db37bc4ea49f79b115ce1291241e';

/// See also [LibraryController].
@ProviderFor(LibraryController)
final libraryControllerProvider =
    AutoDisposeNotifierProvider<LibraryController, LibraryState>.internal(
  LibraryController.new,
  name: r'libraryControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$libraryControllerHash,
  dependencies: <ProviderOrFamily>[watchMangasInLibraryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    watchMangasInLibraryProvider,
    ...?watchMangasInLibraryProvider.allTransitiveDependencies
  },
);

typedef _$LibraryController = AutoDisposeNotifier<LibraryState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
