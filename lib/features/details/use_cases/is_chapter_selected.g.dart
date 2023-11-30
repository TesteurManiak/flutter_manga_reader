// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_chapter_selected.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isChapterSelectedHash() => r'3c777435212fd1583327f727d8812a339f293683';

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

/// See also [isChapterSelected].
@ProviderFor(isChapterSelected)
const isChapterSelectedProvider = IsChapterSelectedFamily();

/// See also [isChapterSelected].
class IsChapterSelectedFamily extends Family<bool> {
  /// See also [isChapterSelected].
  const IsChapterSelectedFamily();

  /// See also [isChapterSelected].
  IsChapterSelectedProvider call(
    Chapter chapter,
    MangaDatasource mangaDatasource,
  ) {
    return IsChapterSelectedProvider(
      chapter,
      mangaDatasource,
    );
  }

  @override
  IsChapterSelectedProvider getProviderOverride(
    covariant IsChapterSelectedProvider provider,
  ) {
    return call(
      provider.chapter,
      provider.mangaDatasource,
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
  String? get name => r'isChapterSelectedProvider';
}

/// See also [isChapterSelected].
class IsChapterSelectedProvider extends AutoDisposeProvider<bool> {
  /// See also [isChapterSelected].
  IsChapterSelectedProvider(
    Chapter chapter,
    MangaDatasource mangaDatasource,
  ) : this._internal(
          (ref) => isChapterSelected(
            ref as IsChapterSelectedRef,
            chapter,
            mangaDatasource,
          ),
          from: isChapterSelectedProvider,
          name: r'isChapterSelectedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isChapterSelectedHash,
          dependencies: IsChapterSelectedFamily._dependencies,
          allTransitiveDependencies:
              IsChapterSelectedFamily._allTransitiveDependencies,
          chapter: chapter,
          mangaDatasource: mangaDatasource,
        );

  IsChapterSelectedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.chapter,
    required this.mangaDatasource,
  }) : super.internal();

  final Chapter chapter;
  final MangaDatasource mangaDatasource;

  @override
  Override overrideWith(
    bool Function(IsChapterSelectedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsChapterSelectedProvider._internal(
        (ref) => create(ref as IsChapterSelectedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        chapter: chapter,
        mangaDatasource: mangaDatasource,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsChapterSelectedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsChapterSelectedProvider &&
        other.chapter == chapter &&
        other.mangaDatasource == mangaDatasource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapter.hashCode);
    hash = _SystemHash.combine(hash, mangaDatasource.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsChapterSelectedRef on AutoDisposeProviderRef<bool> {
  /// The parameter `chapter` of this provider.
  Chapter get chapter;

  /// The parameter `mangaDatasource` of this provider.
  MangaDatasource get mangaDatasource;
}

class _IsChapterSelectedProviderElement extends AutoDisposeProviderElement<bool>
    with IsChapterSelectedRef {
  _IsChapterSelectedProviderElement(super.provider);

  @override
  Chapter get chapter => (origin as IsChapterSelectedProvider).chapter;
  @override
  MangaDatasource get mangaDatasource =>
      (origin as IsChapterSelectedProvider).mangaDatasource;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
