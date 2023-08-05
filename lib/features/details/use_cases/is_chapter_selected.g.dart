// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_chapter_selected.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isChapterSelectedHash() => r'be911dd0fe4664a76a3ef248ce03f58ad677d918';

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

typedef IsChapterSelectedRef = AutoDisposeProviderRef<bool>;

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
  ) {
    return IsChapterSelectedProvider(
      chapter,
    );
  }

  @override
  IsChapterSelectedProvider getProviderOverride(
    covariant IsChapterSelectedProvider provider,
  ) {
    return call(
      provider.chapter,
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
  String? get name => r'isChapterSelectedProvider';
}

/// See also [isChapterSelected].
class IsChapterSelectedProvider extends AutoDisposeProvider<bool> {
  /// See also [isChapterSelected].
  IsChapterSelectedProvider(
    this.chapter,
  ) : super.internal(
          (ref) => isChapterSelected(
            ref,
            chapter,
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
        );

  final Chapter chapter;

  @override
  bool operator ==(Object other) {
    return other is IsChapterSelectedProvider && other.chapter == chapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapter.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
