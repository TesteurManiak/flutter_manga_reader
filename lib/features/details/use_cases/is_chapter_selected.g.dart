// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_chapter_selected.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scopedChapterSelectedHash() =>
    r'd2ffe5e23d6646758acc26fdfe452ad7027bd421';

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

/// See also [scopedChapterSelected].
@ProviderFor(scopedChapterSelected)
const scopedChapterSelectedProvider = ScopedChapterSelectedFamily();

/// See also [scopedChapterSelected].
class ScopedChapterSelectedFamily extends Family<bool> {
  /// See also [scopedChapterSelected].
  const ScopedChapterSelectedFamily();

  /// See also [scopedChapterSelected].
  ScopedChapterSelectedProvider call(
    Chapter chapter,
  ) {
    return ScopedChapterSelectedProvider(
      chapter,
    );
  }

  @override
  ScopedChapterSelectedProvider getProviderOverride(
    covariant ScopedChapterSelectedProvider provider,
  ) {
    return call(
      provider.chapter,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    detailsControllerProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    detailsControllerProvider,
    ...?detailsControllerProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'scopedChapterSelectedProvider';
}

/// See also [scopedChapterSelected].
class ScopedChapterSelectedProvider extends AutoDisposeProvider<bool> {
  /// See also [scopedChapterSelected].
  ScopedChapterSelectedProvider(
    Chapter chapter,
  ) : this._internal(
          (ref) => scopedChapterSelected(
            ref as ScopedChapterSelectedRef,
            chapter,
          ),
          from: scopedChapterSelectedProvider,
          name: r'scopedChapterSelectedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$scopedChapterSelectedHash,
          dependencies: ScopedChapterSelectedFamily._dependencies,
          allTransitiveDependencies:
              ScopedChapterSelectedFamily._allTransitiveDependencies,
          chapter: chapter,
        );

  ScopedChapterSelectedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.chapter,
  }) : super.internal();

  final Chapter chapter;

  @override
  Override overrideWith(
    bool Function(ScopedChapterSelectedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ScopedChapterSelectedProvider._internal(
        (ref) => create(ref as ScopedChapterSelectedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        chapter: chapter,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _ScopedChapterSelectedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScopedChapterSelectedProvider && other.chapter == chapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapter.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ScopedChapterSelectedRef on AutoDisposeProviderRef<bool> {
  /// The parameter `chapter` of this provider.
  Chapter get chapter;
}

class _ScopedChapterSelectedProviderElement
    extends AutoDisposeProviderElement<bool> with ScopedChapterSelectedRef {
  _ScopedChapterSelectedProviderElement(super.provider);

  @override
  Chapter get chapter => (origin as ScopedChapterSelectedProvider).chapter;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
