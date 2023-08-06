// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_viewer_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chapterViewerControllerHash() =>
    r'1c24e29378901da5ec81ebe20962ced5bef52681';

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

abstract class _$ChapterViewerController
    extends BuildlessAutoDisposeNotifier<ChapterViewerState> {
  late final int chapterId;

  ChapterViewerState build(
    int chapterId,
  );
}

/// See also [ChapterViewerController].
@ProviderFor(ChapterViewerController)
const chapterViewerControllerProvider = ChapterViewerControllerFamily();

/// See also [ChapterViewerController].
class ChapterViewerControllerFamily extends Family<ChapterViewerState> {
  /// See also [ChapterViewerController].
  const ChapterViewerControllerFamily();

  /// See also [ChapterViewerController].
  ChapterViewerControllerProvider call(
    int chapterId,
  ) {
    return ChapterViewerControllerProvider(
      chapterId,
    );
  }

  @override
  ChapterViewerControllerProvider getProviderOverride(
    covariant ChapterViewerControllerProvider provider,
  ) {
    return call(
      provider.chapterId,
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
  String? get name => r'chapterViewerControllerProvider';
}

/// See also [ChapterViewerController].
class ChapterViewerControllerProvider extends AutoDisposeNotifierProviderImpl<
    ChapterViewerController, ChapterViewerState> {
  /// See also [ChapterViewerController].
  ChapterViewerControllerProvider(
    this.chapterId,
  ) : super.internal(
          () => ChapterViewerController()..chapterId = chapterId,
          from: chapterViewerControllerProvider,
          name: r'chapterViewerControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterViewerControllerHash,
          dependencies: ChapterViewerControllerFamily._dependencies,
          allTransitiveDependencies:
              ChapterViewerControllerFamily._allTransitiveDependencies,
        );

  final int chapterId;

  @override
  bool operator ==(Object other) {
    return other is ChapterViewerControllerProvider &&
        other.chapterId == chapterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapterId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  ChapterViewerState runNotifierBuild(
    covariant ChapterViewerController notifier,
  ) {
    return notifier.build(
      chapterId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
