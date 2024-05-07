// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_download_progress_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chapterDownloadedHash() => r'2c1209244df66fde21d2a02ef7440e213bd74460';

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

/// See also [chapterDownloaded].
@ProviderFor(chapterDownloaded)
const chapterDownloadedProvider = ChapterDownloadedFamily();

/// See also [chapterDownloaded].
class ChapterDownloadedFamily extends Family<AsyncValue<bool>> {
  /// See also [chapterDownloaded].
  const ChapterDownloadedFamily();

  /// See also [chapterDownloaded].
  ChapterDownloadedProvider call(
    Chapter chapter,
  ) {
    return ChapterDownloadedProvider(
      chapter,
    );
  }

  @override
  ChapterDownloadedProvider getProviderOverride(
    covariant ChapterDownloadedProvider provider,
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
  String? get name => r'chapterDownloadedProvider';
}

/// See also [chapterDownloaded].
class ChapterDownloadedProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [chapterDownloaded].
  ChapterDownloadedProvider(
    Chapter chapter,
  ) : this._internal(
          (ref) => chapterDownloaded(
            ref as ChapterDownloadedRef,
            chapter,
          ),
          from: chapterDownloadedProvider,
          name: r'chapterDownloadedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterDownloadedHash,
          dependencies: ChapterDownloadedFamily._dependencies,
          allTransitiveDependencies:
              ChapterDownloadedFamily._allTransitiveDependencies,
          chapter: chapter,
        );

  ChapterDownloadedProvider._internal(
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
    FutureOr<bool> Function(ChapterDownloadedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChapterDownloadedProvider._internal(
        (ref) => create(ref as ChapterDownloadedRef),
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
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _ChapterDownloadedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterDownloadedProvider && other.chapter == chapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChapterDownloadedRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `chapter` of this provider.
  Chapter get chapter;
}

class _ChapterDownloadedProviderElement
    extends AutoDisposeFutureProviderElement<bool> with ChapterDownloadedRef {
  _ChapterDownloadedProviderElement(super.provider);

  @override
  Chapter get chapter => (origin as ChapterDownloadedProvider).chapter;
}

String _$chapterLocalPathHash() => r'cd1849b5270236c23b592b977b91b6c7c6b08624';

/// See also [chapterLocalPath].
@ProviderFor(chapterLocalPath)
const chapterLocalPathProvider = ChapterLocalPathFamily();

/// See also [chapterLocalPath].
class ChapterLocalPathFamily extends Family<AsyncValue<String>> {
  /// See also [chapterLocalPath].
  const ChapterLocalPathFamily();

  /// See also [chapterLocalPath].
  ChapterLocalPathProvider call(
    Chapter chapter,
  ) {
    return ChapterLocalPathProvider(
      chapter,
    );
  }

  @override
  ChapterLocalPathProvider getProviderOverride(
    covariant ChapterLocalPathProvider provider,
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
  String? get name => r'chapterLocalPathProvider';
}

/// See also [chapterLocalPath].
class ChapterLocalPathProvider extends AutoDisposeFutureProvider<String> {
  /// See also [chapterLocalPath].
  ChapterLocalPathProvider(
    Chapter chapter,
  ) : this._internal(
          (ref) => chapterLocalPath(
            ref as ChapterLocalPathRef,
            chapter,
          ),
          from: chapterLocalPathProvider,
          name: r'chapterLocalPathProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterLocalPathHash,
          dependencies: ChapterLocalPathFamily._dependencies,
          allTransitiveDependencies:
              ChapterLocalPathFamily._allTransitiveDependencies,
          chapter: chapter,
        );

  ChapterLocalPathProvider._internal(
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
    FutureOr<String> Function(ChapterLocalPathRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChapterLocalPathProvider._internal(
        (ref) => create(ref as ChapterLocalPathRef),
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
  AutoDisposeFutureProviderElement<String> createElement() {
    return _ChapterLocalPathProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterLocalPathProvider && other.chapter == chapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChapterLocalPathRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `chapter` of this provider.
  Chapter get chapter;
}

class _ChapterLocalPathProviderElement
    extends AutoDisposeFutureProviderElement<String> with ChapterLocalPathRef {
  _ChapterLocalPathProviderElement(super.provider);

  @override
  Chapter get chapter => (origin as ChapterLocalPathProvider).chapter;
}

String _$chapterDownloadProgressControllerHash() =>
    r'1c1217bab365440e68867d39b172c204cba9062a';

abstract class _$ChapterDownloadProgressController
    extends BuildlessAutoDisposeAsyncNotifier<double> {
  late final Chapter chapter;

  FutureOr<double> build(
    Chapter chapter,
  );
}

/// See also [ChapterDownloadProgressController].
@ProviderFor(ChapterDownloadProgressController)
const chapterDownloadProgressControllerProvider =
    ChapterDownloadProgressControllerFamily();

/// See also [ChapterDownloadProgressController].
class ChapterDownloadProgressControllerFamily
    extends Family<AsyncValue<double>> {
  /// See also [ChapterDownloadProgressController].
  const ChapterDownloadProgressControllerFamily();

  /// See also [ChapterDownloadProgressController].
  ChapterDownloadProgressControllerProvider call(
    Chapter chapter,
  ) {
    return ChapterDownloadProgressControllerProvider(
      chapter,
    );
  }

  @override
  ChapterDownloadProgressControllerProvider getProviderOverride(
    covariant ChapterDownloadProgressControllerProvider provider,
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
  String? get name => r'chapterDownloadProgressControllerProvider';
}

/// See also [ChapterDownloadProgressController].
class ChapterDownloadProgressControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ChapterDownloadProgressController, double> {
  /// See also [ChapterDownloadProgressController].
  ChapterDownloadProgressControllerProvider(
    Chapter chapter,
  ) : this._internal(
          () => ChapterDownloadProgressController()..chapter = chapter,
          from: chapterDownloadProgressControllerProvider,
          name: r'chapterDownloadProgressControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chapterDownloadProgressControllerHash,
          dependencies: ChapterDownloadProgressControllerFamily._dependencies,
          allTransitiveDependencies: ChapterDownloadProgressControllerFamily
              ._allTransitiveDependencies,
          chapter: chapter,
        );

  ChapterDownloadProgressControllerProvider._internal(
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
  FutureOr<double> runNotifierBuild(
    covariant ChapterDownloadProgressController notifier,
  ) {
    return notifier.build(
      chapter,
    );
  }

  @override
  Override overrideWith(ChapterDownloadProgressController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChapterDownloadProgressControllerProvider._internal(
        () => create()..chapter = chapter,
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
  AutoDisposeAsyncNotifierProviderElement<ChapterDownloadProgressController,
      double> createElement() {
    return _ChapterDownloadProgressControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChapterDownloadProgressControllerProvider &&
        other.chapter == chapter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chapter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChapterDownloadProgressControllerRef
    on AutoDisposeAsyncNotifierProviderRef<double> {
  /// The parameter `chapter` of this provider.
  Chapter get chapter;
}

class _ChapterDownloadProgressControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ChapterDownloadProgressController,
        double> with ChapterDownloadProgressControllerRef {
  _ChapterDownloadProgressControllerProviderElement(super.provider);

  @override
  Chapter get chapter =>
      (origin as ChapterDownloadProgressControllerProvider).chapter;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
