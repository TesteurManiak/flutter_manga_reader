// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$backupControllerHash() => r'bcc137f790f72f9d6a7e37bacec4f151e309c42d';

/// See also [BackupController].
@ProviderFor(BackupController)
final backupControllerProvider =
    AutoDisposeNotifierProvider<BackupController, BackupState>.internal(
      BackupController.new,
      name: r'backupControllerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$backupControllerHash,
      dependencies: <ProviderOrFamily>[localDatasourceProvider],
      allTransitiveDependencies: <ProviderOrFamily>{
        localDatasourceProvider,
        ...?localDatasourceProvider.allTransitiveDependencies,
      },
    );

typedef _$BackupController = AutoDisposeNotifier<BackupState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
