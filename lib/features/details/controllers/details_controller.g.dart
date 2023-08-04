// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailsControllerHash() => r'f7edb9cda34e837da993a3ee27ebd10893b5331b';

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

abstract class _$DetailsController extends BuildlessNotifier<DetailsState> {
  late final int mangaId;

  DetailsState build(
    int mangaId,
  );
}

/// See also [DetailsController].
@ProviderFor(DetailsController)
const detailsControllerProvider = DetailsControllerFamily();

/// See also [DetailsController].
class DetailsControllerFamily extends Family<DetailsState> {
  /// See also [DetailsController].
  const DetailsControllerFamily();

  /// See also [DetailsController].
  DetailsControllerProvider call(
    int mangaId,
  ) {
    return DetailsControllerProvider(
      mangaId,
    );
  }

  @override
  DetailsControllerProvider getProviderOverride(
    covariant DetailsControllerProvider provider,
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
  String? get name => r'detailsControllerProvider';
}

/// See also [DetailsController].
class DetailsControllerProvider
    extends NotifierProviderImpl<DetailsController, DetailsState> {
  /// See also [DetailsController].
  DetailsControllerProvider(
    this.mangaId,
  ) : super.internal(
          () => DetailsController()..mangaId = mangaId,
          from: detailsControllerProvider,
          name: r'detailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailsControllerHash,
          dependencies: DetailsControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailsControllerFamily._allTransitiveDependencies,
        );

  final int mangaId;

  @override
  bool operator ==(Object other) {
    return other is DetailsControllerProvider && other.mangaId == mangaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mangaId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  DetailsState runNotifierBuild(
    covariant DetailsController notifier,
  ) {
    return notifier.build(
      mangaId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
